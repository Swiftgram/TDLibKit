//
//  Call.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-bbae7be4
//  https://github.com/tdlib/td/tree/bbae7be4
//

import Foundation


/// Describes a call
public struct Call: Codable {

    /// Call identifier, not persistent
    public let id: Int

    /// True, if the call is outgoing
    public let isOutgoing: Bool

    /// True, if the call is a video call
    public let isVideo: Bool

    /// Call state
    public let state: CallState

    /// Peer user identifier
    public let userId: Int64


    public init(
        id: Int,
        isOutgoing: Bool,
        isVideo: Bool,
        state: CallState,
        userId: Int64
    ) {
        self.id = id
        self.isOutgoing = isOutgoing
        self.isVideo = isVideo
        self.state = state
        self.userId = userId
    }
}

