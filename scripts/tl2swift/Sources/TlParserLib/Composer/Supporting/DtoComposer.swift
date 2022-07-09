//
//  DtoComposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/// Generates DTO class
final class DtoComposer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
            .addLine("public final class DTO<T: Codable>: Codable {")
            .addLine("    let type: String")
            .addLine("    var extra: String?")
            .addLine("    let payload: T")
            .addLine("    let encoder: JSONEncoder?")
            .addBlankLine()
            .addLine("    public init(_ payload: T, encoder: JSONEncoder? = nil) {")
            .addLine("        self.payload = payload")
            .addLine("        self.encoder = encoder")
            .addLine("        let payloadType = String(describing: T.self)")
            .addLine("        self.type = payloadType.prefix(1).lowercased() + payloadType.dropFirst()") // TODO: replace with protocol
            .addLine("    }")
            .addBlankLine()
            .addLine("    public init(from decoder: Decoder) throws {")
            .addLine("        let container = try decoder.container(keyedBy: DtoCodingKeys.self)")
            .addLine("        type = try container.decode(String.self, forKey: .type)")
            .addLine("        extra = try container.decodeIfPresent(String.self, forKey: .extra)")
            .addLine("        payload = try T(from: decoder)")
            .addLine("        encoder = nil")
            .addLine("    }")
            .addBlankLine()
            .addLine("    public func encode(to encoder: Encoder) throws {")
            .addLine("        var container = encoder.container(keyedBy: DtoCodingKeys.self)")
            .addLine("        try container.encode(type, forKey: .type)")
            .addLine("        try container.encodeIfPresent(extra, forKey: .extra)")
            .addLine("        try payload.encode(to: encoder)")
            .addLine("    }")
            .addLine("}")
            .addBlankLine()
            .addLine("extension DTO: TdQuery {")
            .addBlankLine()
            .addLine("    public func make(with extra: String? = nil) throws -> Data {")
            .addLine("        self.extra = extra")
            .addLine("        let encoder = self.encoder ?? JSONEncoder()")
            .addLine("        return try encoder.encode(self)")
            .addLine("    }")
            .addLine("}")
    }
    
}
