//
//  InviteGroupCallParticipant.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Invites a user to an active group call; for group calls not bound to a chat only. Sends a service message of the type messageGroupCall. The group call can have at most getOption("group_call_participant_count_max") participants
public struct InviteGroupCallParticipant: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the group call is a video call
    public let isVideo: Bool?

    /// User identifier
    public let userId: Int64?


    public init(
        groupCallId: Int?,
        isVideo: Bool?,
        userId: Int64?
    ) {
        self.groupCallId = groupCallId
        self.isVideo = isVideo
        self.userId = userId
    }
}

