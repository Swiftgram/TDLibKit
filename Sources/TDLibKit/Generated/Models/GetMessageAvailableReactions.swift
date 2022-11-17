//
//  GetMessageAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
//

import Foundation


/// Returns reactions, which can be added to a message. The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or updateMessageInteractionInfo for the message
public struct GetMessageAvailableReactions: Codable, Equatable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Number of reaction per row, 5-25
    public let rowSize: Int?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        rowSize: Int?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.rowSize = rowSize
    }
}

