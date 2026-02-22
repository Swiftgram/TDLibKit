//
//  GetChatOwnerAfterLeaving.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
//

import Foundation


/// Returns the user who will become the owner of the chat after 7 days if the current user does not return to the chat during that period; requires owner privileges in the chat. Available only for supergroups and channel chats
public struct GetChatOwnerAfterLeaving: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

