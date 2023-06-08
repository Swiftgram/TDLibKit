//
//  File.swift
//  
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

final class StructComposer: Composer {
    
    // MARK: - Private properties
    
    private let classInfo: ClassInfo
    
    
    // MARK: - Init
    
    init(classInfo: ClassInfo) {
        self.classInfo = classInfo
    }
    
    
    // MARK: - Override
    
    override func composeUtilitySourceCode() throws -> String {
        return composeStruct(classInfo: self.classInfo)
    }
    
    
    // MARK: - Private methods
    
    private func composeStruct(classInfo: ClassInfo) -> String {
        let structName = classInfo.name.capitalizedFirstLetter
        let protocols = protocolConformance(for: structName, using: classInfo.properties)
        let props = composeStructProperties(classInfo.properties)
        let structInit = composeInit(classInfo.properties)
        return ""
            .addLine("/// \(classInfo.description)")
            .addLine("public struct \(structName): \(protocols) {")
            .addBlankLine()
            .append(props.indent())
            .addBlankLine()
            .append(structInit.indent())
            .addLine("}")
            .addBlankLine()
    }
    
    private func composeStructProperties(_ properties: [ClassProperty]) -> String {
        var result = ""
        for propertyInfo in properties {
            if let comment = propertyInfo.description {
                result = result.addLine("/// \(comment)")
            }
            let type = TypesHelper.getType(propertyInfo.type, optional: propertyInfo.optional)
            let propertyName = TypesHelper.maskSwiftKeyword(propertyInfo.name.underscoreToCamelCase())
            result = result
                .addLine("public let \(propertyName): \(type)")
                .addBlankLine()
        }
        return result
    }
    
    private func composeInit(_ properties: [ClassProperty]) -> String {
        var paramsList = [String]()
        var paramNames = [String]()
        for param in properties {
            let type = TypesHelper.getType(param.type, optional: param.optional)
            let paramName = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
            paramsList.append("\(paramName): \(type)")
            paramNames.append(paramName)
        }
        
        var result = ""
        if paramsList.count > 1 {
            let params = paramsList.reduce("", { $0.addLine("\($1),".indent()) })
            result = result
                .addLine("public init(")
                .append(String(params.dropLast().dropLast())) // remove \n and ,
                .addBlankLine()
                .addLine(") {")
        } else if paramsList.count == 1  {
            result = result.addLine("public init(\(paramsList.first!)) {")
        } else {
            return result.addLine("public init() {}")
        }
        
        for param in paramNames {
            result = result.addLine("self.\(param) = \(param)".indent())
        }
        
        return result.addLine("}")
    }
    
    private func protocolConformance(for structName: String, using properties: [ClassProperty]) -> String {
        var protocols = ["Codable", "Equatable", "Hashable"]
        if properties.map(\.name).contains("id") {
            protocols.append("Identifiable")
        }
        if structName == "Error" {
            protocols.append("Swift.Error")
        }
        return protocols.joined(separator: ", ")
    }
    
    
    // MARK: - Not used
    
    private func composeCodable(_ classInfo: ClassInfo) -> String {
        let codingKeys = composeCodingKeys(classInfo.properties)
        let encoder = composeEncoder(classInfo.properties)
        return ""
            .addLine("let _type = \"\(classInfo.name)\"")
            .addLine("var _extra: String? = nil")
            .addBlankLine()
            .append(codingKeys)
            .addBlankLine()
            .append(encoder)
    }
    
    private func composeCodingKeys(_ properties: [ClassProperty]) -> String {
        var result = ""
            .addLine("private enum CodingKeys: String, CodingKey {")
            .addLine("case _type = \"@type\"".indent())
            .addLine("case _extra = \"@extra\"".indent())
        
        for propertyInfo in properties {
            let caseName = TypesHelper.maskSwiftKeyword(propertyInfo.name.underscoreToCamelCase())
            let caseValue = propertyInfo.name
            result = result
                .addLine("case \(caseName) = \"\(caseValue)\"".indent())
        }
        return result.addLine("}")
    }
    
    private func composeEncoder(_ properties: [ClassProperty]) -> String {
        var result = ""
            .addLine("public func encode(to encoder: Encoder) throws {")
            .addLine("var container = encoder.container(keyedBy: CodingKeys.self)".indent())
            .addLine("try container.encode(_type, forKey: ._type)".indent())
            .addLine("try container.encodeIfPresent(_extra, forKey: ._extra)".indent())
        
        for propertyInfo in properties {
            let propName = TypesHelper.maskSwiftKeyword(propertyInfo.name.underscoreToCamelCase())
            result = result
                .addLine("try container.encode(\(propName), forKey: .\(propName))".indent())
        }
        
        return result.addLine("}")
    }
    
}
