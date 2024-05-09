//
//  Parser.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 21/08/2019.
//

import Foundation

/// Type Language Schema parser
public final class Parser {
    
    // MARK: - Private types
    
    private struct DescriptionAndParams {
        var description: String
        var params: [String: String]
    }
    
    private struct EntityNameAndTypes {
        var name: String
        var types: [String: String]
        var root: String
    }
    
    private struct InterfaceInfo: Hashable {
        let name: String
        let description: String
    }
    
    
    // MARK: - Private properties
    
    private let lines: [String]
    
    
    // MARK: - Init
    
    public init(tl: String) {
        lines = tl.split(separator: "\n").map{ String($0) }
    }
    
    
    // MARK: - Public methods
    
    public func parse() -> Schema? {
        let schema = Schema()
        var hitFunctions = false
        
        var i = 0
        while i < lines.count {
            let line = lines[i]
            
            if line.isEmpty {
                i += 1
                continue
            }
            
            if line.contains("---functions---") {
                hitFunctions = true
                i += 1
                continue
            }
            
            if line.hasPrefix("//@class") {
                let interface = parseClassDeclaration(line)
                let enumInfo = EnumInfo(enumType: "\(interface.name)", items: [], description: interface.description)
                schema.enumInfoes.append(enumInfo)
                
            } else if line.hasPrefix("//@description ") {
                
                var buffer = [String]()
                var nextLine = line
                while nextLine.hasPrefix("//"), i < lines.count {
                    buffer.append(nextLine)
                    i += 1
                    nextLine = lines[i]
                }
                let entityDesc = parseDescription(buffer.joined(separator: "\n"))
                let entityNameAndTypes = parseEntityLine(nextLine)
                
                var properties = [ClassProperty]()
                for (name, type) in entityNameAndTypes.types {
                    let desc = entityDesc.params[name]
                    // Any direct or indirect function parameter can be specified to be null.
                    // In all functions null objects are allowed by TDLib in incoming requests.
                    // https://github.com/tdlib/td/issues/1536
                    let optional = (desc?.contains("may be null") ?? false) ||
                        (desc?.contains("pass null") ?? false) ||
                        hitFunctions
                    let prop = ClassProperty(name: name, type: type, description: desc, optional: optional)
                    properties.append(prop)
                }
                properties.sort(by: { $0.name < $1.name })
                
                let classInfo = ClassInfo(
                    name: entityNameAndTypes.name,
                    properties: properties,
                    description: entityDesc.description,
                    rootName: entityNameAndTypes.root,
                    isFunction: hitFunctions
                )
                schema.classInfoes.append(classInfo)
                
                if !classInfo.isFunction {
                    if let enumInfoIdx = schema.enumInfoes.firstIndex(where: { $0.enumType == "\(classInfo.rootName)" }) {
                        let hasAssocValue = !classInfo.properties.isEmpty
                        let enumItem = EnumItem(
                            name: classInfo.name,
                            associatedClassName: hasAssocValue ? classInfo.name.capitalizedFirstLetter : nil,
                            description: classInfo.description
                        )
                        schema.enumInfoes[enumInfoIdx].items.append(enumItem)
                    }
                }
            }
            
            i += 1
        }
        return schema
    }
    

    // MARK: - Private methods
    
    private func parseClassDeclaration(_ line: String) -> InterfaceInfo {
        let parts = line.split(separator: " ")
        let name = String(parts[1])
        let desc = parts[3...].joined(separator: " ")
        return InterfaceInfo(name: name, description: desc)
    }
    
    private func parseDescription(_ line: String) -> DescriptionAndParams {
        let str = String(line.dropFirst("//@description ".count))
        let scanner = Scanner(string: str)
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "\n")
        var desc = scanner.scanUpTo("@") ?? str
        desc = desc.replacingOccurrences(of: "\n//-", with: " ")
        desc = desc.trimmingCharacters(in: CharacterSet.comment)
        var result = DescriptionAndParams(description: desc, params: [:])
        while !scanner.isAtEnd {
            var paramName = scanner.scanUpTo(" ") ?? ""
            paramName = paramName.trimmingCharacters(in: CharacterSet.at)
            var paramDesc = scanner.scanUpTo("@") ?? ""
            paramDesc = paramDesc.replacingOccurrences(of: "\n//-", with: " ")
            paramDesc = paramDesc.trimmingCharacters(in: CharacterSet.comment)
            result.params[paramName] = paramDesc
        }
        return result
    }
    
    private func parseEntityLine(_ line: String) -> EntityNameAndTypes {
        let parts = line.split(separator: " ")
        let root = String(parts.last!).trimmingCharacters(in: CharacterSet(charactersIn: ";"))
        var result = EntityNameAndTypes(name: String(parts[0]), types: [:], root: root)
        if parts.count > 3 {
            for item in parts.dropFirst().dropLast().dropLast() {
                let keyVal = item.split(separator: ":")
                result.types[String(keyVal[0])] = String(keyVal[1])
            }
        }
        return result
    }
    
}
