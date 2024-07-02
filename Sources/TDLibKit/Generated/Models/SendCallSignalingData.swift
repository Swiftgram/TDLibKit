//
//  SendCallSignalingData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
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

