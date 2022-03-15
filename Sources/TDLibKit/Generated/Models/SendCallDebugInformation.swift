//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
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

