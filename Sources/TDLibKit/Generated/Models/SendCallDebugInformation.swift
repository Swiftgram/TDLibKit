//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-a53cb30e
//  https://github.com/tdlib/td/tree/a53cb30e
//

import Foundation


/// Sends debug information for a call
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

