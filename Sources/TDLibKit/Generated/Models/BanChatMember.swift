//
//  BanChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Bans a member in a chat. Members can't be banned in private or secret chats. In supergroups and channels, the user will not be able to return to the group on their own using invite links, etc., unless unbanned first
public struct BanChatMember: Codable, Equatable {

    /// Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Ignored in basic groups and if a chat is banned
    public let bannedUntilDate: Int?

    /// Chat identifier
    public let chatId: Int64?

    /// Member identifier
    public let memberId: MessageSender?

    /// Pass true to delete all messages in the chat for the user that is being removed. Always true for supergroups and channels
    public let revokeMessages: Bool?


    public init(
        bannedUntilDate: Int?,
        chatId: Int64?,
        memberId: MessageSender?,
        revokeMessages: Bool?
    ) {
        self.bannedUntilDate = bannedUntilDate
        self.chatId = chatId
        self.memberId = memberId
        self.revokeMessages = revokeMessages
    }
}

