//
//  RemoveTopChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
public struct RemoveTopChat: Codable, Equatable {

    /// Category of frequently used chats
    public let category: TopChatCategory?

    /// Chat identifier
    public let chatId: Int64?


    public init(
        category: TopChatCategory?,
        chatId: Int64?
    ) {
        self.category = category
        self.chatId = chatId
    }
}

