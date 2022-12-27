//
//  RemoveRecentlyFoundChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-86d5f12e
//  https://github.com/tdlib/td/tree/86d5f12e
//

import Foundation


/// Removes a chat from the list of recently found chats
public struct RemoveRecentlyFoundChat: Codable, Equatable {

    /// Identifier of the chat to be removed
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

