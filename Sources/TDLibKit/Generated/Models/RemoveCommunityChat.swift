//
//  RemoveCommunityChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Removes a chat from a community. Members of the chat who aren't members of other chats in the community will be removed from the community. Requires owner privileges in the supergroup or channel chat, or ownership of the bot for chats with bots, or can_edit_chat_list administrator right in the community
public struct RemoveCommunityChat: Codable, Equatable, Hashable {

    /// Identifier of the chat to remove
    public let chatId: Int64?

    /// Identifier of the community
    public let communityId: Int64?


    public init(
        chatId: Int64?,
        communityId: Int64?
    ) {
        self.chatId = chatId
        self.communityId = communityId
    }
}

