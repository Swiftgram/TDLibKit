//
//  GetReceivedGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Returns gifts received by the given user or chat
public struct GetReceivedGifts: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Pass collection identifier to get gifts only from the specified collection; pass 0 to get gifts regardless of collections
    public let collectionId: Int?

    /// Pass true to exclude gifts that are just hosted and are not owned by the owner
    public let excludeHosted: Bool?

    /// Pass true to exclude gifts that can be purchased limited number of times and can't be upgraded
    public let excludeNonUpgradable: Bool?

    /// Pass true to exclude gifts that are saved to the chat's profile page. Always false for gifts received by other users and channel chats without can_post_messages administrator right
    public let excludeSaved: Bool?

    /// Pass true to exclude gifts that can be purchased unlimited number of times
    public let excludeUnlimited: Bool?

    /// Pass true to exclude gifts that aren't saved to the chat's profile page. Always true for gifts received by other users and channel chats without can_post_messages administrator right
    public let excludeUnsaved: Bool?

    /// Pass true to exclude gifts that can be purchased limited number of times and can be upgraded
    public let excludeUpgradable: Bool?

    /// Pass true to exclude upgraded gifts
    public let excludeUpgraded: Bool?

    /// Pass true to exclude gifts that can't be used in setUpgradedGiftColors
    public let excludeWithoutColors: Bool?

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
        collectionId: Int?,
        excludeHosted: Bool?,
        excludeNonUpgradable: Bool?,
        excludeSaved: Bool?,
        excludeUnlimited: Bool?,
        excludeUnsaved: Bool?,
        excludeUpgradable: Bool?,
        excludeUpgraded: Bool?,
        excludeWithoutColors: Bool?,
        limit: Int?,
        offset: String?,
        ownerId: MessageSender?,
        sortByPrice: Bool?
    ) {
        self.businessConnectionId = businessConnectionId
        self.collectionId = collectionId
        self.excludeHosted = excludeHosted
        self.excludeNonUpgradable = excludeNonUpgradable
        self.excludeSaved = excludeSaved
        self.excludeUnlimited = excludeUnlimited
        self.excludeUnsaved = excludeUnsaved
        self.excludeUpgradable = excludeUpgradable
        self.excludeUpgraded = excludeUpgraded
        self.excludeWithoutColors = excludeWithoutColors
        self.limit = limit
        self.offset = offset
        self.ownerId = ownerId
        self.sortByPrice = sortByPrice
    }
}

