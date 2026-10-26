//
//  SendCallSignalingData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Sends call signaling data
public struct SendCallSignalingData: Codable, Equatable, Hashable {

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

