//
//  DeleteMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Deletes messages
public struct DeleteMessages: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifiers of the messages to be deleted. Use messageProperties.can_be_deleted_only_for_self and messageProperties.can_be_deleted_for_all_users to get suitable messages
    public let messageIds: [Int64]?

    /// Pass true to delete messages for all chat members. Always true for supergroups, channels, and secret chats
    public let revoke: Bool?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?,
        revoke: Bool?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
        self.revoke = revoke
    }
}

