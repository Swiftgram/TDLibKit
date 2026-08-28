//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Sends debug information for a call to Telegram servers
public struct SendCallDebugInformation: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: InputCall?

    /// Debug information in application-specific format
    public let debugInformation: String?


    public init(
        callId: InputCall?,
        debugInformation: String?
    ) {
        self.callId = callId
        self.debugInformation = debugInformation
    }
}

