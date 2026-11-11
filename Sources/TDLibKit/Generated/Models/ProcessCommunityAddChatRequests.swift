//
//  ProcessCommunityAddChatRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Handles all pending requests to add chats to a community; requires can_edit_chat_list administrator right in the community
public struct ProcessCommunityAddChatRequests: Codable, Equatable, Hashable {

    /// Pass true to approve all requests and add the chats to the community; pass false to decline them
    public let approve: Bool?

    /// Identifier of the community
    public let communityId: Int64?


    public init(
        approve: Bool?,
        communityId: Int64?
    ) {
        self.approve = approve
        self.communityId = communityId
    }
}

