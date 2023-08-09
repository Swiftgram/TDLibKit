//
//  LoggerCimposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 28/09/2019.
//

import Foundation

/// Generates Logger protocol
final class LoggerCimposer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
            .addLine("public protocol TDLibLogger {")
            .addLine("    func log(_ message: String, type: LoggerMessageType?)")
            .addLine("}")
            .addBlankLine()
            .addBlankLine()
            .addLine("@available(*, deprecated, renamed: \"TDLibLogger\", message: \"interferes with OSLog.Logger\")")
            .addLine("public protocol Logger {")
            .addLine("    func log(_ message: String, type: LoggerMessageType?)")
            .addLine("}")
            .addBlankLine()
            .addBlankLine()
            .addLine("public enum LoggerMessageType: CustomStringConvertible {")
            .addLine("    case receive")
            .addLine("    case send")
            .addLine("    case execute")
            .addLine("    case custom(String)")
            .addBlankLine()
            .addLine("    public var description: String {")
            .addLine("        switch self {")
            .addLine("        case .receive:")
            .addLine("            return \"Receive\"")
            .addLine("        case .send:")
            .addLine("            return \"Send\"")
            .addLine("        case .execute:")
            .addLine("            return \"Execute\"")
            .addLine("        case .custom(let value):")
            .addLine("            return value")
            .addLine("        }")
            .addLine("    }")
            .addLine("}")
    }
}
