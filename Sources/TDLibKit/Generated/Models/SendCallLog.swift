//
//  SendCallLog.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-375d3d23
//  https://github.com/tdlib/td/tree/375d3d23
//

import Foundation


/// Sends log file for a call to Telegram servers
public struct SendCallLog: Codable, Equatable {

    /// Call identifier
    public let callId: Int?

    /// Call log file. Only inputFileLocal and inputFileGenerated are supported
    public let logFile: InputFile?


    public init(
        callId: Int?,
        logFile: InputFile?
    ) {
        self.callId = callId
        self.logFile = logFile
    }
}

