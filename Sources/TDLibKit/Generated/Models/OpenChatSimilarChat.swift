//
//  OpenChatSimilarChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Informs TDLib that a chat was opened from the list of similar chats. The method is independent from openChat and closeChat methods
public struct OpenChatSimilarChat: Codable, Equatable, Hashable {

    /// Identifier of the original chat, which similar chats were requested
    public let chatId: Int64?

    /// Identifier of the opened chat
    public let openedChatId: Int64?


    public init(
        chatId: Int64?,
        openedChatId: Int64?
    ) {
        self.chatId = chatId
        self.openedChatId = openedChatId
    }
}

