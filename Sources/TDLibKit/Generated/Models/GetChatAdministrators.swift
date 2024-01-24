//
//  GetChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-5bbfc1cf
//  https://github.com/tdlib/td/tree/5bbfc1cf
//

import Foundation


/// Returns a list of administrators of the chat with their custom titles
public struct GetChatAdministrators: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

