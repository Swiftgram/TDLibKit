//
//  AddRecentlyFoundChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first
public struct AddRecentlyFoundChat: Codable, Equatable, Hashable {

    /// Identifier of the chat to add
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

