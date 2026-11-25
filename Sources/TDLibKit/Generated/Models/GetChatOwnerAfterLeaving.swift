//
//  GetChatOwnerAfterLeaving.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the user who will become the owner of the chat after 7 days if the current user does not return to the supergroup or channel during that period or immediately for basic groups; requires owner privileges in the chat. Available only in basic groups, supergroups, and channel chats
public struct GetChatOwnerAfterLeaving: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

