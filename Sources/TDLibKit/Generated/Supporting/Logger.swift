//
//  Logger.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-bc7734a2
//  https://github.com/tdlib/td/tree/bc7734a2
//

import Foundation


public protocol Logger {
    func log(_ message: String, type: LoggerMessageType?)
}


public enum LoggerMessageType: CustomStringConvertible {
    case receive
    case send
    case execute
    case custom(String)

    public var description: String {
        switch self {
        case .receive:
            return "Receive"
        case .send:
            return "Send"
        case .execute:
            return "Execute"
        case .custom(let value):
            return value
        }
    }
}
