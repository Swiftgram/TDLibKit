//
//  TransferChatOwnership.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the owner of a chat; requires owner privileges in the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats
public struct TransferChatOwnership: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The 2-step verification password of the current user
    public let password: String?

    /// Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user
    public let userId: Int64?


    public init(
        chatId: Int64?,
        password: String?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.password = password
        self.userId = userId
    }
}

