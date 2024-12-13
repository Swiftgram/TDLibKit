//
//  ConnectChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Connects an affiliate program to the given chat. Returns information about the connected affiliate program
public struct ConnectChatAffiliateProgram: Codable, Equatable, Hashable {

    /// Identifier of the bot, which affiliate program is connected
    public let botUserId: Int64?

    /// Identifier of the chat to which the affiliate program will be connected. Can be an identifier of the Saved Messages chat, of a chat with an owned bot, or of a channel chat with can_post_messages administrator right
    public let chatId: Int64?


    public init(
        botUserId: Int64?,
        chatId: Int64?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
    }
}

