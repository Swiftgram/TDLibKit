//
//  InviteVideoChatParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Invites users to an active video chat. Sends a service message of the type messageInviteVideoChatParticipants to the chat bound to the group call
public struct InviteVideoChatParticipants: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// User identifiers. At most 10 users can be invited simultaneously
    public let userIds: [Int64]?


    public init(
        groupCallId: Int?,
        userIds: [Int64]?
    ) {
        self.groupCallId = groupCallId
        self.userIds = userIds
    }
}

