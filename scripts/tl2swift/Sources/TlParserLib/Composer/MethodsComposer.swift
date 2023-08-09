//
//  File.swift
//  
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation


final class MethodsComposer: Composer {
    
    // MARK: - Private properties
    
    private let classInfoes: [ClassInfo]
    private let clientSubclassStrategy: Bool
    private let executingFuncName: String
    

    enum Constants {
        static let asyncAvailableString: String = "@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)"
    }
    
    // MARK: - Init
    
    init(classInfoes: [ClassInfo], clientSubclassStrategy: Bool = false) {
        self.classInfoes = classInfoes
        self.clientSubclassStrategy = clientSubclassStrategy
        if (self.clientSubclassStrategy) {
            self.executingFuncName = "run"
        } else {
            self.executingFuncName = "execute"
        }
    }
    
    
    // MARK: - Override
    
    override func composeUtilitySourceCode() throws -> String {
        let methods = composeMethods(classInfoes: classInfoes)
        let executeFunc = composeExecuteFunc()
        let asyncExecuteFunc = composeExecuteFunc(swiftAsync: true)
        let sendFuncStub = composeSendFuncStub()
        if (self.clientSubclassStrategy) {
            return ""
                .addLine("/// Must be subclassed with `send` and `execute` TDLib functions implementation")
                .addLine("public class TDLibApi {")
                .addBlankLine()
                .addLine("public let encoder = JSONEncoder()".indent())
                .addLine("public let decoder = JSONDecoder()".indent())
                .addBlankLine()
                .addLine("public init() {".indent())
                .addLine("self.encoder.keyEncodingStrategy = .convertToSnakeCase".indent().indent())
                .addLine("self.decoder.keyDecodingStrategy = .convertFromSnakeCase".indent().indent())
                .addLine("}".indent())
                .addBlankLine()
                .addBlankLine()
                .append(sendFuncStub.indent())
                .addBlankLine()
                .addBlankLine()
                .append(methods.indent())
                .addBlankLine()
                .append(executeFunc.indent())
                .addBlankLine()
                .addBlankLine()
                .append(asyncExecuteFunc.indent())
                .addLine("}")
        } else {
            return ""
                .addLine("public final class TdApi {")
                .addBlankLine()
                .addLine("public let client: TdClient".indent())
                .addLine("public let encoder = JSONEncoder()".indent())
                .addLine("public let decoder = JSONDecoder()".indent())
                .addBlankLine()
                .addLine("public init(client: TdClient) {".indent())
                .addLine("self.client = client".indent().indent())
                .addLine("self.encoder.keyEncodingStrategy = .convertToSnakeCase".indent().indent())
                .addLine("self.decoder.keyDecodingStrategy = .convertFromSnakeCase".indent().indent())
                .addLine("}".indent())
                .addBlankLine()
                .addBlankLine()
                .append(methods.indent())
                .addBlankLine()
                .append(executeFunc.indent())
                .addBlankLine()
                .addBlankLine()
                .append(asyncExecuteFunc.indent())
                .addLine("}")
        }
    }
    
    
    // MARK: - Private methods
    
    private func composeMethods(classInfoes: [ClassInfo]) -> String {
        var result = ""
        for info in classInfoes where info.isFunction {
            result = result.append(composeMethod(info))
            result = result.append(composeMethod(info, swiftAsync: true))
        }
        return result
    }
    
    private func composeMethod(_ info: ClassInfo, swiftAsync: Bool = false) -> String {
        var paramsList = [String]()
        for param in info.properties {
            let type = TypesHelper.getType(param.type, optional: param.optional)
            let paramName = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
            paramsList.append("\(paramName): \(type),")
        }
        if swiftAsync {
            if !paramsList.isEmpty {
                paramsList[paramsList.count - 1] = String(paramsList[paramsList.count - 1].dropLast())
            }
        } else {
            paramsList.append("completion: @escaping (Result<\(info.rootName), Swift.Error>) -> Void")
        }
        
        var result = composeComment(info)
        if swiftAsync {
            result = result.addLine(Constants.asyncAvailableString)
        }
        if swiftAsync && info.rootName == "Ok" {
            result = result.addLine("@discardableResult")
        }
        let methodScope: String
        if self.clientSubclassStrategy {
            methodScope = "public final"
        } else {
            methodScope = "public"
        }
        if paramsList.count > 1 {
            let params = paramsList.reduce("", { $0.addLine("\($1)".indent()) })
            result = result
                .addLine("\(methodScope) func \(info.name)(")
                .append(params)
            if swiftAsync {
                result = result.addLine(") async throws -> \(info.rootName) {")
            } else {
                result = result.addLine(") throws {")
            }
        } else {
            if swiftAsync {
                result = result.addLine("\(methodScope) func \(info.name)(\(paramsList.first ?? "")) async throws -> \(info.rootName) {")
            } else {
                result = result.addLine("\(methodScope) func \(info.name)(\(paramsList.first ?? "")) throws {")
            }
        }
        
        let impl = composeMethodImpl(info, swiftAsync: swiftAsync)
        result = result
            .append(impl.indent())
            .addLine("}")
            .addBlankLine()
        
        return result
    }
    
    private func composeComment(_ info: ClassInfo) -> String {
        var result = "/// \(info.description)\n"
        var returnsSentences: [String] = []
        
        
        func sanitizeDescription(_ string: String) -> String {
            // Sanitize description for per-sentence split
            return string.replacingOccurrences(of: "i.e.", with: "tl2swift_id_est").replacingOccurrences(of: "i. e.", with: "tl2swift_ws_id_est").replacingOccurrences(of: ";", with: ".")
        }
        
        func deSanitizeDescription(_ string: String) -> String {
            // Desanitize description
            return string.replacingOccurrences(of: "tl2swift_id_est", with: "i.e.").replacingOccurrences(of: "tl2swift_ws_id_est", with: "i. e.")
        }

        let sentences = sanitizeDescription(info.description).split(separator: ".")
        for sentence in sentences {
            // Looking for sentences with "return*"
            if sentence.lowercased().contains("return") {
                var returnSentence: String?
                
                // Remove first "return" word
                if returnsSentences.isEmpty {
                    let firstWord = sentence.trimmingCharacters(in: .whitespaces).components(separatedBy: " ").first
                    if let firstWord = firstWord, firstWord.lowercased().contains("return") {
                        returnSentence = String(sentence.trimmingCharacters(in: .whitespaces).dropFirst(firstWord.count))
                    } else {
                        returnSentence = String(sentence.trimmingCharacters(in: .whitespaces))
                    }
                } else {
                    returnSentence = String(sentence.trimmingCharacters(in: .whitespaces))
                }
                
                // Append to the list of sentences that describes a return
                if let strongReturnSentence = returnSentence {
                    returnsSentences.append(strongReturnSentence.trimmingCharacters(in: .whitespaces))
                }
            }
        }

        for param in info.properties {
            let paramName = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
            result = result.addLine("/// - Parameter \(paramName): \(param.description ?? "")")
        }
        if !returnsSentences.isEmpty {
            result = result.addLine("/// - Returns: \(deSanitizeDescription(returnsSentences.joined(separator: ". ").trimmingCharacters(in: .whitespaces)).capitalizedFirstLetter)")
        }

        return result
    }
    
    private func composeMethodImpl(_ info: ClassInfo, swiftAsync: Bool = false) -> String  {
        let structName = info.name.capitalizedFirstLetter
        var result = ""
        if info.properties.isEmpty {
            result = result.addLine("let query = \(structName)()")
        } else {
            result = result.addLine("let query = \(structName)(")
            for param in info.properties {
                let paramName = param.name.underscoreToCamelCase()
                let paramValue = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
                result = result.addLine("\(paramName): \(paramValue),".indent())
            }
            result = String(result.dropLast().dropLast())
            result = result.addBlankLine().addLine(")")
        }

        if swiftAsync {
            return result.addLine("return try await self.\(self.executingFuncName)(query: query)")
        } else {
            return result.addLine("self.\(self.executingFuncName)(query: query, completion: completion)")
        }
    }
    
    private func composeExecuteFunc(swiftAsync: Bool = false) -> String {
        let methodScope: String
        if self.clientSubclassStrategy {
            methodScope = "private final"
        } else {
            methodScope = "private"
        }

        let sendMethodSource: String
        if self.clientSubclassStrategy {
            sendMethodSource = "self"
        } else {
            sendMethodSource = "client"
        }
        if swiftAsync {
            return ""
                .addLine(Constants.asyncAvailableString)
                .addLine("\(methodScope) func \(self.executingFuncName)<Q, R>(query: Q) async throws -> R where Q: Codable, R: Codable {")
                .addLine("    let dto = DTO(query, encoder: self.encoder)")
                .addLine("    return try await withCheckedThrowingContinuation { continuation in")
                .addLine("        do {")
                .addLine("            try \(sendMethodSource).send(query: dto) { result in")
                .addLine("                if let error = try? self.decoder.decode(DTO<Error>.self, from: result) {")
                .addLine("                    continuation.resume(with: .failure(error.payload))")
                .addLine("                } else {")
                .addLine("                    let response = self.decoder.tryDecode(DTO<R>.self, from: result)")
                .addLine("                    continuation.resume(with: response.map { $0.payload })")
                .addLine("                }")
                .addLine("            }")
                .addLine("        } catch let err as Error {")
                .addLine("            continuation.resume(with: .failure(err))")
                .addLine("        } catch let any {")
                .addLine("            let err = Error(code: 500, message: any.localizedDescription)")
                .addLine("            continuation.resume(with: .failure(err))")
                .addLine("        }")
                .addLine("    }")
                .addLine("}")
        } else {
            return ""
                .addLine("\(methodScope) func \(self.executingFuncName)<Q, R>(")
                .addLine("    query: Q,")
                .addLine("    completion: @escaping (Result<R, Swift.Error>) -> Void)")
                .addLine("    where Q: Codable, R: Codable {")
                .addBlankLine()
                .addLine("    let dto = DTO(query, encoder: self.encoder)")
                .addLine("    do {")
                .addLine("        try \(sendMethodSource).send(query: dto) { [weak self] result in")
                .addLine("            guard let strongSelf = self else { return }")
                .addLine("            if let error = try? strongSelf.decoder.decode(DTO<Error>.self, from: result) {")
                .addLine("                completion(.failure(error.payload))")
                .addLine("            } else {")
                .addLine("                let response = strongSelf.decoder.tryDecode(DTO<R>.self, from: result)")
                .addLine("                completion(response.map { $0.payload })")
                .addLine("            }")
                .addLine("        }")
                .addLine("    } catch let err as Error {")
                .addLine("        completion( .failure(err))")
                .addLine("    } catch let any {")
                .addLine("        let err = Error(code: 500, message: any.localizedDescription)")
                .addLine("        completion( .failure(err))")
                .addLine("    }")
                .addLine("}")
        }
    }

    private func composeSendFuncStub() -> String {
        return ""
            .addLine("/// Sends request to the TDLib client.")
            .addLine("public func send(query: TdQuery, completion: ((Data) -> Void)? = nil) throws {")
            .addLine("fatalError(\"send() not implemented\")".indent())
            .addLine("}")
            .addBlankLine()
            .addLine("/// Synchronously executes TDLib request.")
            .addLine("public func execute(query: TdQuery) throws -> [String:Any]? {")
            .addLine("fatalError(\"execute() not implemented\")".indent())
            .addLine("}")
    }
}
