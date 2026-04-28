//
//  Call.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
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

    /// Persistent unique call identifier; 0 if isn't assigned yet by the server
    public let uniqueId: TdInt64

    /// User identifier of the other call participant
    public let userId: Int64


    public init(
        id: Int,
        isOutgoing: Bool,
        isVideo: Bool,
        state: CallState,
        uniqueId: TdInt64,
        userId: Int64
    ) {
        self.id = id
        self.isOutgoing = isOutgoing
        self.isVideo = isVideo
        self.state = state
        self.uniqueId = uniqueId
        self.userId = userId
    }
}

