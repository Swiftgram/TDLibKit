//
//  SetPersonalChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

