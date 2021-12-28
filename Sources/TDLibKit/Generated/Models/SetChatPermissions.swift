//
//  SetChatPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-a6903023
//  https://github.com/tdlib/td/tree/a6903023
//

import Foundation


/// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
public struct SetChatPermissions: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New non-administrator members permissions in the chat
    public let permissions: ChatPermissions?


    public init(
        chatId: Int64?,
        permissions: ChatPermissions?
    ) {
        self.chatId = chatId
        self.permissions = permissions
    }
}

