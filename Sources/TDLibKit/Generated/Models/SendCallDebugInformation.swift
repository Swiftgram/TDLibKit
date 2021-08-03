//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
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

