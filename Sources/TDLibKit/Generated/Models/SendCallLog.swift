//
//  SendCallLog.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

