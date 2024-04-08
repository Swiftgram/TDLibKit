//
//  EnumComposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

final class EnumComposer: Composer {
    
    // MARK: - Private properties
    
    private let enumInfo: EnumInfo
    private let schema: Schema
    
    
    // MARK: - Init
    
    init(enumInfo: EnumInfo, schema: Schema) {
        self.enumInfo = enumInfo
        self.schema = schema
    }
    
    
    // MARK: - Override
    
    override public func composeUtilitySourceCode() throws -> String {
        let recursive = isRecursive(enumInfo.enumType)
        let cases = composeCaseItems(enumInfo.items)
        let kinds = composeKindItems(enumInfo.items)
        let decoder = composeDecoder(enumInfo.items)
        let encoder = composeEncoder(enumInfo.items)
        let structs = try composeAssociatedStructs()
        
        var composedEnum = ""
        composedEnum = composedEnum.addLine("/// \(enumInfo.description)")
        if recursive {
            composedEnum = composedEnum.addLine("/// This Swift enum is recursive.")
        }

        return composedEnum
            .addLine("public indirect enum \(enumInfo.enumType): Codable, Equatable, Hashable {")
            .addBlankLine()
            .append(cases.indent())
            .addBlankLine()
            .append(kinds.indent())
            .addBlankLine()
            .append(decoder.indent())
            .addBlankLine()
            .append(encoder.indent())
            .addLine("}")
            .addBlankLine()
            .append(structs)
    }
    
    
    // MARK: - Private methods
    
    private func composeCaseItems(_ items: [EnumItem]) -> String {
        var result = ""
        for item in items {
            result = result.addLine("/// \(item.description)")
            if let assocClass = item.associatedClassName {
                result = result.addLine("case \(item.name)(\(assocClass))")
            } else {
                result = result.addLine("case \(item.name)")
            }
            result = result.addBlankLine()
        }
        return result
    }
    
    private func composeKindItems(_ items: [EnumItem]) -> String {
        let cases = items.reduce("", { $0.addLine("case \($1.name)".indent()) })
        return ""
            .addLine("private enum Kind: String, Codable {")
            .append(cases)
            .addLine("}")
    }
    
    private func composeDecoder(_ items: [EnumItem]) -> String {
        let cases = composeDecoderCases(items)
        return ""
            .addLine("public init(from decoder: Decoder) throws {")
            .addLine("let container = try decoder.container(keyedBy: DtoCodingKeys.self)".indent())
            .addLine("let type = try container.decode(Kind.self, forKey: .type)".indent())
            .addLine("switch type {".indent())
            .append(cases.indent())
            .addLine("}".indent())
            .addLine("}")
    }
    
    private func composeDecoderCases(_ items: [EnumItem]) -> String {
        var result = ""
        for item in items {
            result = result.addLine("case .\(item.name):")
            if let assocStruct = item.associatedClassName {
                result = result.addLine("let value = try \(assocStruct)(from: decoder)".indent())
                result = result.addLine("self = .\(item.name)(value)".indent())
            } else {
                result = result.addLine("self = .\(item.name)".indent())
            }
        }
        return result
    }
    
    private func composeEncoder(_ items: [EnumItem]) -> String {
        let cases = composeEncoderCases(items)
        return ""
            .addLine("public func encode(to encoder: Encoder) throws {")
            .addLine("var container = encoder.container(keyedBy: DtoCodingKeys.self)".indent())
            .addLine("switch self {".indent())
            .append(cases.indent())
            .addLine("}".indent())
            .addLine("}")
    }
    
    private func composeEncoderCases(_ items: [EnumItem]) -> String {
        var result = ""
        for item in items {
            if item.associatedClassName != nil {
                result = result.addLine("case .\(item.name)(let value):")
                result = result.addLine("try container.encode(Kind.\(item.name), forKey: .type)".indent())
                result = result.addLine("try value.encode(to: encoder)".indent())
            } else {
                result = result.addLine("case .\(item.name):")
                result = result.addLine("try container.encode(Kind.\(item.name), forKey: .type)".indent())
            }
        }
        return result
    }
    
    private func composeAssociatedStructs() throws -> String {
        var result = ""
        let assocStructs = enumInfo.items.compactMap { $0.associatedClassName }
        try assocStructs.forEach { name in
            if let info = schema.classInfoes.first(where: { $0.name.lowercased() == name.lowercased() }) {
                let composer = StructComposer(classInfo: info)
                let structs = try composer.composeUtilitySourceCode()
                result = result.append(structs)
            }
        }
        return result
    }
    
    private func isRecursive(_ name: String) -> Bool {
        // TODO: check enum recursion
        let indirectEnums = ["RichText", "PageBlock", "InternalLinkType", "InputMessageContent"]
        return indirectEnums.contains(name)
    }
    
}
