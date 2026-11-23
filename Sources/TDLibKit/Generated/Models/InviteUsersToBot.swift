//
//  InviteUsersToBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Invites users to private chats with a bot owned by the current user. Can be called only if userTypeBot.can_be_edited == true. Each invited user will receive a message messageBotInvite and the bot will be able to send messages to the user. The request succeeds if at least one user was invited
public struct InviteUsersToBot: Codable, Equatable, Hashable {

    /// Identifier of the bot
    public let botUserId: Int64?

    /// Identifiers of the users to invite; 1-10 different users
    public let userIds: [Int64]?


    public init(
        botUserId: Int64?,
        userIds: [Int64]?
    ) {
        self.botUserId = botUserId
        self.userIds = userIds
    }
}

