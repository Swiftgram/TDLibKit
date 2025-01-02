//
//  Call.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes a call
public struct Call: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of the group call associated with the call; 0 if the group call isn't created yet. The group call can be received through the method getGroupCall
    public let groupCallId: Int

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
        groupCallId: Int,
        id: Int,
        isOutgoing: Bool,
        isVideo: Bool,
        state: CallState,
        userId: Int64
    ) {
        self.groupCallId = groupCallId
        self.id = id
        self.isOutgoing = isOutgoing
        self.isVideo = isVideo
        self.state = state
        self.userId = userId
    }
}

