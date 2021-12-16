//
//  SendCallSignalingData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
//

import Foundation


/// Sends call signaling data
public struct SendCallSignalingData: Codable, Equatable {

    /// Call identifier
    public let callId: Int?

    /// The data
    public let data: Data?


    public init(
        callId: Int?,
        data: Data?
    ) {
        self.callId = callId
        self.data = data
    }
}

