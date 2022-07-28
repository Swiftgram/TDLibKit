//
//  SendBotStartMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message
public struct SendBotStartMessage: Codable, Equatable {

    /// Identifier of the bot
    public let botUserId: Int64?

    /// Identifier of the target chat
    public let chatId: Int64?

    /// A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
    public let parameter: String?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        parameter: String?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.parameter = parameter
    }
}

