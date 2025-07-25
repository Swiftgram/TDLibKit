//
//  GetMessageAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns reactions, which can be added to a message. The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or updateMessageInteractionInfo for the message
public struct GetMessageAvailableReactions: Codable, Equatable, Hashable {

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

