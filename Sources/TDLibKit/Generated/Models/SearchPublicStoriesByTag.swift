//
//  SearchPublicStoriesByTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Searches for public stories containing the given hashtag or cashtag. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicStoriesByTag: Codable, Equatable, Hashable {

    /// The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the chat that posted the stories to search for; pass 0 to search stories in all chats
    public let storySenderChatId: Int64?

    /// Hashtag or cashtag to search for
    public let tag: String?


    public init(
        limit: Int?,
        offset: String?,
        storySenderChatId: Int64?,
        tag: String?
    ) {
        self.limit = limit
        self.offset = offset
        self.storySenderChatId = storySenderChatId
        self.tag = tag
    }
}

