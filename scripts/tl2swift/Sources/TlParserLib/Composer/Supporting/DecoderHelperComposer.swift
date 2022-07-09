//
//  DecoderHelperComposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/// Generates extension for JSONDecoder
final class DecoderHelperComposer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
            .addLine("extension JSONDecoder {")
            .addBlankLine()
            .addLine("    func tryDecode<T>(_ type: T.Type, from data: Data) -> Result<T, Swift.Error> where T : Decodable {")
            .addLine("        do {")
            .addLine("            let result = try self.decode(type, from: data)")
            .addLine("            return .success(result)")
            .addLine("        } catch {")
            .addLine("            return .failure(error)")
            .addLine("        }")
            .addLine("    }")
            .addLine("}")
    }
}
