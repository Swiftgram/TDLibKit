//
//  DeleteAllRecentMessageReactionsFromSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Deletes all recent reactions added by the specified sender in a chat. Supported only for basic groups and supergroups; requires can_delete_messages administrator right
public struct DeleteAllRecentMessageReactionsFromSender: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the sender of reactions to delete
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.senderId = senderId
    }
}

