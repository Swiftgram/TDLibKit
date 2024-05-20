//
//  Call.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a call
public struct Call: Codable, Equatable, Hashable, Identifiable {

    /// Call identifier, not persistent
    public let id: Int

    /// True, if the call is outgoing
    public let isOutgoing: Bool

    /// True, if the call is a video call
    public let isVideo: Bool

    /// Call state
    public let state: CallState

    /// User identifier of the other call participant
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

