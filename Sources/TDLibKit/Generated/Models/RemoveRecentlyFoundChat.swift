//
//  RemoveRecentlyFoundChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Removes a chat from the list of recently found chats
public struct RemoveRecentlyFoundChat: Codable {

    /// Identifier of the chat to be removed
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

