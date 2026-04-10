//
//  SearchGiftsForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Returns upgraded gifts that can be bought from other owners using sendResoldGift
public struct SearchGiftsForResale: Codable, Equatable, Hashable {

    /// Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed. If none attributes of specific type are specified, then all values for this attribute type are allowed
    public let attributes: [UpgradedGiftAttributeId]?

    /// Pass true to get only gifts suitable for crafting
    public let forCrafting: Bool?

    /// Pass true to get only gifts that can be bought using Telegram Stars
    public let forStars: Bool?

    /// Identifier of the regular gift that was upgraded to a unique gift
    public let giftId: TdInt64?

    /// The maximum number of gifts to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results
    public let offset: String?

    /// Order in which the results will be sorted
    public let order: GiftForResaleOrder?


    public init(
        attributes: [UpgradedGiftAttributeId]?,
        forCrafting: Bool?,
        forStars: Bool?,
        giftId: TdInt64?,
        limit: Int?,
        offset: String?,
        order: GiftForResaleOrder?
    ) {
        self.attributes = attributes
        self.forCrafting = forCrafting
        self.forStars = forStars
        self.giftId = giftId
        self.limit = limit
        self.offset = offset
        self.order = order
    }
}

