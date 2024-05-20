//
//  GetStoryInteractions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns interactions with a story. The method can be called only for stories posted on behalf of the current user
public struct GetStoryInteractions: Codable, Equatable, Hashable {

    /// The maximum number of story interactions to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to get only interactions by contacts; pass false to get all relevant interactions
    public let onlyContacts: Bool?

    /// Pass true to get forwards and reposts first, then reactions, then other views; pass false to get interactions sorted just by interaction date
    public let preferForwards: Bool?

    /// Pass true to get interactions with reaction first; pass false to get interactions sorted just by interaction date. Ignored if prefer_forwards == true
    public let preferWithReaction: Bool?

    /// Query to search for in names, usernames and titles; may be empty to get all relevant interactions
    public let query: String?

    /// Story identifier
    public let storyId: Int?


    public init(
        limit: Int?,
        offset: String?,
        onlyContacts: Bool?,
        preferForwards: Bool?,
        preferWithReaction: Bool?,
        query: String?,
        storyId: Int?
    ) {
        self.limit = limit
        self.offset = offset
        self.onlyContacts = onlyContacts
        self.preferForwards = preferForwards
        self.preferWithReaction = preferWithReaction
        self.query = query
        self.storyId = storyId
    }
}

