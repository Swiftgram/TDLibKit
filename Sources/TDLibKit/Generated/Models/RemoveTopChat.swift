//
//  RemoveTopChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
public struct RemoveTopChat: Codable {

    /// Category of frequently used chats
    public let category: TopChatCategory

    /// Chat identifier
    public let chatId: Int64


    public init(
        category: TopChatCategory,
        chatId: Int64
    ) {
        self.category = category
        self.chatId = chatId
    }
}

