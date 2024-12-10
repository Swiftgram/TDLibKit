//
//  GetChatAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Returns affiliate programs that were connected to the given chat
public struct GetChatAffiliatePrograms: Codable, Equatable, Hashable {

    /// Identifier of the chat for which the affiliate programs were connected. Can be an identifier of the Saved Messages chat, of a chat with an owned bot, or of a channel chat with can_post_messages administrator right
    public let chatId: Int64?

    /// The maximum number of affiliate programs to return
    public let limit: Int?

    /// Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
    }
}

