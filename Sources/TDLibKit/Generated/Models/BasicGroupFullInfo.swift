//
//  BasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains full information about a basic group
public struct BasicGroupFullInfo: Codable, Equatable {

    /// List of commands of bots in the group
    public let botCommands: [BotCommands]

    /// User identifier of the creator of the group; 0 if unknown
    public let creatorUserId: Int64

    public let description: String

    /// Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
    public let inviteLink: ChatInviteLink?

    /// Group members
    public let members: [ChatMember]

    /// Chat photo; may be null
    public let photo: ChatPhoto?


    public init(
        botCommands: [BotCommands],
        creatorUserId: Int64,
        description: String,
        inviteLink: ChatInviteLink?,
        members: [ChatMember],
        photo: ChatPhoto?
    ) {
        self.botCommands = botCommands
        self.creatorUserId = creatorUserId
        self.description = description
        self.inviteLink = inviteLink
        self.members = members
        self.photo = photo
    }
}

