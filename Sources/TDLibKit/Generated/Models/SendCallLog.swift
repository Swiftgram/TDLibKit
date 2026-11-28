//
//  SendCallLog.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Sends a log file for a call to Telegram servers
public struct SendCallLog: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: InputCall?

    /// Call log file. Only inputFileLocal and inputFileGenerated are supported
    public let logFile: InputFile?


    public init(
        callId: InputCall?,
        logFile: InputFile?
    ) {
        self.callId = callId
        self.logFile = logFile
    }
}

