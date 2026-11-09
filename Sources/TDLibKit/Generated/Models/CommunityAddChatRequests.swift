//
//  CommunityAddChatRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Contains a list of requests to add chats to a community
public struct CommunityAddChatRequests: Codable, Equatable, Hashable {

    /// The offset for the next getCommunityAddChatRequests request. If empty, then there are no more results
    public let nextOffset: String

    /// List of the requests
    public let requests: [CommunityAddChatRequest]

    /// Approximate total number of requests found
    public let totalCount: Int


    public init(
        nextOffset: String,
        requests: [CommunityAddChatRequest],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.requests = requests
        self.totalCount = totalCount
    }
}

