//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Sends debug information for a call
public struct SendCallDebugInformation: Codable {

    /// Call identifier
    public let callId: Int

    /// Debug information in application-specific format
    public let debugInformation: String


    public init(
        callId: Int,
        debugInformation: String
    ) {
        self.callId = callId
        self.debugInformation = debugInformation
    }
}

