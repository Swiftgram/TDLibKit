//
//  SetPersonalChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Changes the personal chat of the current user
public struct SetPersonalChat: Codable, Equatable, Hashable {

    /// Identifier of the new personal chat; pass 0 to remove the chat. Use getSuitablePersonalChats to get suitable chats
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

