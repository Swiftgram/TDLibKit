//
//  SendCallSignalingData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Sends call signaling data
public struct SendCallSignalingData: Codable {

    /// Call identifier
    public let callId: Int

    /// The data
    public let data: Data


    public init(
        callId: Int,
        data: Data
    ) {
        self.callId = callId
        self.data = data
    }
}

