//
//  SearchGiftsForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Returns upgraded gifts that can be bought from other owners
public struct SearchGiftsForResale: Codable, Equatable, Hashable {

    /// Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed. If none attributes of specific type are specified, then all values for this attribute type are allowed
    public let attributes: [UpgradedGiftAttributeId]?

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
        giftId: TdInt64?,
        limit: Int?,
        offset: String?,
        order: GiftForResaleOrder?
    ) {
        self.attributes = attributes
        self.giftId = giftId
        self.limit = limit
        self.offset = offset
        self.order = order
    }
}

