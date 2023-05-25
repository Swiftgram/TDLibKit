//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-0150094c
//  https://github.com/tdlib/td/tree/0150094c
//

import Foundation


/// Sends debug information for a call to Telegram servers
public struct SendCallDebugInformation: Codable, Equatable {

    /// Call identifier
    public let callId: Int?

    /// Debug information in application-specific format
    public let debugInformation: String?


    public init(
        callId: Int?,
        debugInformation: String?
    ) {
        self.callId = callId
        self.debugInformation = debugInformation
    }
}

