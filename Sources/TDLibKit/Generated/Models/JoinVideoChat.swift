//
//  JoinVideoChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Joins an active video chat. Returns join response payload for tgcalls
public struct JoinVideoChat: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Invite hash as received from internalLinkTypeVideoChat
    public let inviteHash: String?

    /// Parameters to join the call
    public let joinParameters: GroupCallJoinParameters?

    /// Identifier of a group call participant, which will be used to join the call; pass null to join as self
    public let participantId: MessageSender?


    public init(
        groupCallId: Int?,
        inviteHash: String?,
        joinParameters: GroupCallJoinParameters?,
        participantId: MessageSender?
    ) {
        self.groupCallId = groupCallId
        self.inviteHash = inviteHash
        self.joinParameters = joinParameters
        self.participantId = participantId
    }
}

