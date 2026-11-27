//
//  SearchGiftsForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns upgraded gifts that can be bought from other owners using sendResoldGift or getGiftOnChainPurchaseTransaction
public struct SearchGiftsForResale: Codable, Equatable, Hashable {

    /// Attributes used to filter gifts. If multiple attributes of the same type are specified, then all of them are allowed. If no attributes of a specific type are specified, then all values for this attribute type are allowed
    public let attributes: [UpgradedGiftAttributeId]?

    /// Pass true to get only gifts suitable for crafting
    public let forCrafting: Bool?

    /// Pass true to get gifts sold on-chain on Fragment; may be true only if getOption("can_buy_on_chain_gifts") is true. Must be false if for_crafting is true or if the gift will be bought for another user or a channel chat
    public let forFragment: Bool?

    /// Pass true to get gifts that can be bought using TON Grams, including gifts sold on-chain using a fixed-price sale contract if getOption("can_buy_on_chain_fixed_price_gifts") is true. The filter must be shown only if getOption("show_gift_resale_gram_filter") is true and must be selected by default if getOption("select_gift_resale_gram_filter_by_default") is true
    public let forGrams: Bool?

    /// Pass true to get gifts that can be bought using Telegram Stars. If none of for_stars, for_grams, and for_fragment is true, then gifts that can be bought using Telegram Stars or TON Grams are returned, except gifts sold on-chain. The filter must be shown only if getOption("show_gift_resale_star_filter") is true and must be selected by default if getOption("select_gift_resale_star_filter_by_default") is true
    public let forStars: Bool?

    /// Identifier of the regular gift that was upgraded to a unique gift
    public let giftId: TdInt64?

    /// The maximum number of gifts to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request with the same order and attributes; use an empty string to get the first chunk of results
    public let offset: String?

    /// Order in which the results will be sorted
    public let order: GiftForResaleOrder?


    public init(
        attributes: [UpgradedGiftAttributeId]?,
        forCrafting: Bool?,
        forFragment: Bool?,
        forGrams: Bool?,
        forStars: Bool?,
        giftId: TdInt64?,
        limit: Int?,
        offset: String?,
        order: GiftForResaleOrder?
    ) {
        self.attributes = attributes
        self.forCrafting = forCrafting
        self.forFragment = forFragment
        self.forGrams = forGrams
        self.forStars = forStars
        self.giftId = giftId
        self.limit = limit
        self.offset = offset
        self.order = order
    }
}

