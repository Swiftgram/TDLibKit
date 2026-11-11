//
//  ProcessCommunityAddChatRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Handles a pending request to add a chat to a community; requires can_edit_chat_list administrator right in the community
public struct ProcessCommunityAddChatRequest: Codable, Equatable, Hashable {

    /// Pass true to approve the request and add the chat to the community; pass false to decline it. If the community already has the maximum number of chats, then approval fails with the error "COMMUNITY_PEERS_TOO_MUCH"
    public let approve: Bool?

    /// Identifier of the chat from the request
    public let chatId: Int64?

    /// Identifier of the community
    public let communityId: Int64?


    public init(
        approve: Bool?,
        chatId: Int64?,
        communityId: Int64?
    ) {
        self.approve = approve
        self.chatId = chatId
        self.communityId = communityId
    }
}

