//
//  BasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains full information about a basic group
public struct BasicGroupFullInfo: Codable, Equatable, Hashable {

    /// List of commands of bots in the group
    public let botCommands: [BotCommands]

    /// True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup
    public let canHideMembers: Bool

    /// True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup
    public let canToggleAggressiveAntiSpam: Bool

    /// User identifier of the creator of the group; 0 if unknown
    public let creatorUserId: Int64

    public let description: String

    /// Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
    public let inviteLink: ChatInviteLink?

    /// Group members
    public let members: [ChatMember]

    /// Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
    public let photo: ChatPhoto?


    public init(
        botCommands: [BotCommands],
        canHideMembers: Bool,
        canToggleAggressiveAntiSpam: Bool,
        creatorUserId: Int64,
        description: String,
        inviteLink: ChatInviteLink?,
        members: [ChatMember],
        photo: ChatPhoto?
    ) {
        self.botCommands = botCommands
        self.canHideMembers = canHideMembers
        self.canToggleAggressiveAntiSpam = canToggleAggressiveAntiSpam
        self.creatorUserId = creatorUserId
        self.description = description
        self.inviteLink = inviteLink
        self.members = members
        self.photo = photo
    }
}

