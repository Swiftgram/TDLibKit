//
//  TdInt64Composer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 05/10/2019.
//

import Foundation

/// Generates TdInt64 struct
final class TdInt64Composer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
            .addLine("public struct TdInt64: RawRepresentable, ExpressibleByIntegerLiteral, Hashable {")
            .addBlankLine()
            .addLine("    public typealias RawValue = Int64")
            .addBlankLine()
            .addLine("    // MARK: - Properties")
            .addBlankLine()
            .addLine("    public var rawValue: Int64")
            .addBlankLine()
            .addLine("    public static var max: TdInt64 { return TdInt64(Int64.max) }")
            .addLine("")
            .addLine("    public static var min: TdInt64 { return TdInt64(Int64.min) }")
            .addBlankLine()
            .addBlankLine()
            .addLine("    // MARK: - Init")
            .addBlankLine()
            .addLine("    public init(_ int64: Int64) {")
            .addLine("        self.rawValue = int64")
            .addLine("    }")
            .addBlankLine()
            .addLine("    public init?(rawValue: Int64) {")
            .addLine("        self.rawValue = rawValue")
            .addLine("    }")
            .addBlankLine()
            .addLine("    public init(integerLiteral value: Int) {")
            .addLine("        self.rawValue = Int64(value)")
            .addLine("    }")
            .addLine("}")
            .addLine("")
            .addLine("")
            .addLine("extension TdInt64: Codable {")
            .addBlankLine()
            .addLine("    public init(from decoder: Decoder) throws {")
            .addLine("        let container = try decoder.singleValueContainer()")
            .addLine("        let strValue = try container.decode(String.self)")
            .addLine("        guard let value = Int64(strValue) else {")
            .addLine("            throw DecodingError.dataCorrupted(")
            .addLine("                DecodingError.Context(")
            .addLine("                    codingPath: container.codingPath,")
            .addLine("                    debugDescription: \"Can't convert String value \\(strValue) to Int64.\"))")
            .addLine("        }")
            .addLine("        self.rawValue = value")
            .addLine("    }")
            .addBlankLine()
            .addLine("    public func encode(to encoder: Encoder) throws {")
            .addLine("        var container = encoder.singleValueContainer()")
            .addLine("        try container.encode(\"\\(rawValue)\")")
            .addLine("    }")
            .addBlankLine()
            .addLine("}")
            .addLine("")
            .addLine("")
            .addLine("extension TdInt64: Comparable {")
            .addLine("    public static func < (lhs: Self, rhs: Self) -> Bool {")
            .addLine("        return lhs.rawValue < rhs.rawValue")
            .addLine("    }")
            .addLine("}")
    }
}
