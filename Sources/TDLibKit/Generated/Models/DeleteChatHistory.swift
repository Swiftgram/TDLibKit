//
//  DeleteChatHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-7334b262
//  https://github.com/tdlib/td/tree/7334b262
//

import Foundation


/// Deletes all messages in the chat. Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat
public struct DeleteChatHistory: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true if the chat needs to be removed from the chat list
    public let removeFromChatList: Bool?

    /// Pass true to try to delete chat history for all users
    public let revoke: Bool?


    public init(
        chatId: Int64?,
        removeFromChatList: Bool?,
        revoke: Bool?
    ) {
        self.chatId = chatId
        self.removeFromChatList = removeFromChatList
        self.revoke = revoke
    }
}

