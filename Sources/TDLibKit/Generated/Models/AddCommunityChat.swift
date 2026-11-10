//
//  AddCommunityChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Adds a chat to a community. If the current user isn't allowed to change the list of chats in the community, then a request to add the chat is sent to administrators of the community instead and the method fails with the error "COMMUNITY_REQUEST_CREATED"
public struct AddCommunityChat: Codable, Equatable, Hashable {

    /// Identifier of the chat to add; only chats with owned bots and owned basic group, supergroup and channel chats are allowed; basic group chats will be automatically upgraded to supergroup chats. A community can have up to getOption("community_chat_count_max") supergroup and channel chats and up to getOption("community_bot_count_max") chats with bots; otherwise, the method fails with the error "COMMUNITY_PEERS_TOO_MUCH"
    public let chatId: Int64?

    /// Identifier of the community
    public let communityId: Int64?

    /// Pass true if the chat will be visible only to administrators of the community
    public let isHidden: Bool?


    public init(
        chatId: Int64?,
        communityId: Int64?,
        isHidden: Bool?
    ) {
        self.chatId = chatId
        self.communityId = communityId
        self.isHidden = isHidden
    }
}

