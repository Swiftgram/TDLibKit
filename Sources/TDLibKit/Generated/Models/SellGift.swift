//
//  SellGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Sells a gift for Telegram Stars. Use receivedGift.sell_star_count or messageGift.sell_star_count to check whether the gift is sellable. A gift can be sold if it is sellable and not more than getOption("gift_sell_period") seconds have passed since the gift was sent
public struct SellGift: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(
        businessConnectionId: String?,
        receivedGiftId: String?
    ) {
        self.businessConnectionId = businessConnectionId
        self.receivedGiftId = receivedGiftId
    }
}

