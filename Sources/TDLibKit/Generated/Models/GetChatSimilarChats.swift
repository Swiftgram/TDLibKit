//
//  GetChatSimilarChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Returns a list of chats similar to the given chat
public struct GetChatSimilarChats: Codable, Equatable, Hashable {

    /// Identifier of the target chat; must be an identifier of a channel chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

