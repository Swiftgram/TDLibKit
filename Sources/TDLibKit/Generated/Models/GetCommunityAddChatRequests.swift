//
//  GetCommunityAddChatRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Returns pending requests to add chats to a community. Administrators of the community with can_edit_chat_list right receive all requests; other users receive only requests sent by them
public struct GetCommunityAddChatRequests: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// The maximum number of requests to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        communityId: Int64?,
        limit: Int?,
        offset: String?
    ) {
        self.communityId = communityId
        self.limit = limit
        self.offset = offset
    }
}

