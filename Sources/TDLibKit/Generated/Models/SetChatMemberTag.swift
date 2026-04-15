//
//  SetChatMemberTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Changes the tag or custom title of a chat member; requires can_manage_tags administrator right to change tag of other users; for basic groups and supergroups only
public struct SetChatMemberTag: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The new tag of the member in the chat; 0-16 characters without emoji
    public let tag: String?

    /// Identifier of the user, which tag is changed. Chats can't have member tags
    public let userId: Int64?


    public init(
        chatId: Int64?,
        tag: String?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.tag = tag
        self.userId = userId
    }
}

