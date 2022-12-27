//
//  GetChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-86d5f12e
//  https://github.com/tdlib/td/tree/86d5f12e
//

import Foundation


/// Returns a list of administrators of the chat with their custom titles
public struct GetChatAdministrators: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

