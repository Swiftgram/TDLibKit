//
//  GetChatListsToAddChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1886bcf8
//  https://github.com/tdlib/td/tree/1886bcf8
//

import Foundation


/// Returns chat lists to which the chat can be added. This is an offline request
public struct GetChatListsToAddChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

