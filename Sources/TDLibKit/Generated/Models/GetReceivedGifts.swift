//
//  GetReceivedGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns gifts received by the given user or chat
public struct GetReceivedGifts: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Pass true to exclude gifts that can be purchased limited number of times
    public let excludeLimited: Bool?

    /// Pass true to exclude gifts that are saved to the chat's profile page. Always false for gifts received by other users and channel chats without can_post_messages administrator right
    public let excludeSaved: Bool?

    /// Pass true to exclude gifts that can be purchased unlimited number of times
    public let excludeUnlimited: Bool?

    /// Pass true to exclude gifts that aren't saved to the chat's profile page. Always true for gifts received by other users and channel chats without can_post_messages administrator right
    public let excludeUnsaved: Bool?

    /// Pass true to exclude upgraded gifts
    public let excludeUpgraded: Bool?

    /// The maximum number of gifts to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the gift receiver
    public let ownerId: MessageSender?

    /// Pass true to sort results by gift price instead of send date
    public let sortByPrice: Bool?


    public init(
        businessConnectionId: String?,
        excludeLimited: Bool?,
        excludeSaved: Bool?,
        excludeUnlimited: Bool?,
        excludeUnsaved: Bool?,
        excludeUpgraded: Bool?,
        limit: Int?,
        offset: String?,
        ownerId: MessageSender?,
        sortByPrice: Bool?
    ) {
        self.businessConnectionId = businessConnectionId
        self.excludeLimited = excludeLimited
        self.excludeSaved = excludeSaved
        self.excludeUnlimited = excludeUnlimited
        self.excludeUnsaved = excludeUnsaved
        self.excludeUpgraded = excludeUpgraded
        self.limit = limit
        self.offset = offset
        self.ownerId = ownerId
        self.sortByPrice = sortByPrice
    }
}

