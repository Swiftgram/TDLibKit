//
//  CodingKeysComposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/// Generates CodingKeys enum
final class CodingKeysComposer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
        .addLine("public enum DtoCodingKeys: String, CodingKey {")
        .addLine("case type = \"@type\"".indent())
        .addLine("case extra = \"@extra\"".indent())
        .addLine("case clientId = \"@client_id\"".indent())
        .addLine("}")
    }
}
