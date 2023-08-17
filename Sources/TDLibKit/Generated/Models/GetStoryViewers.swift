//
//  GetStoryViewers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-203e8cf9
//  https://github.com/tdlib/td/tree/203e8cf9
//

import Foundation


/// Returns viewers of a story. The method can be called if story.can_get_viewers == true
public struct GetStoryViewers: Codable, Equatable, Hashable {

    /// The maximum number of story viewers to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to get only contacts; pass false to get all relevant viewers
    public let onlyContacts: Bool?

    /// Pass true to get viewers with reaction first; pass false to get viewers sorted just by view_date
    public let preferWithReaction: Bool?

    /// Query to search for in names and usernames of the viewers; may be empty to get all relevant viewers
    public let query: String?

    /// Story identifier
    public let storyId: Int?


    public init(
        limit: Int?,
        offset: String?,
        onlyContacts: Bool?,
        preferWithReaction: Bool?,
        query: String?,
        storyId: Int?
    ) {
        self.limit = limit
        self.offset = offset
        self.onlyContacts = onlyContacts
        self.preferWithReaction = preferWithReaction
        self.query = query
        self.storyId = storyId
    }
}

