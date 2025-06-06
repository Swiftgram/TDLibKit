//
//  GetChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Returns an affiliate program that were connected to the given chat by identifier of the bot that created the program
public struct GetChatAffiliateProgram: Codable, Equatable, Hashable {

    /// Identifier of the bot that created the program
    public let botUserId: Int64?

    /// Identifier of the chat for which the affiliate program was connected. Can be an identifier of the Saved Messages chat, of a chat with an owned bot, or of a channel chat with can_post_messages administrator right
    public let chatId: Int64?


    public init(
        botUserId: Int64?,
        chatId: Int64?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
    }
}

