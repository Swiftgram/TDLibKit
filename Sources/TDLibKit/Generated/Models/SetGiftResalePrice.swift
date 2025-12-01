//
//  SetGiftResalePrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes resale price of a unique gift owned by the current user
public struct SetGiftResalePrice: Codable, Equatable, Hashable {

    /// The new price for the unique gift; pass null to disallow gift resale. The current user will receive getOption("gift_resale_star_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift if the gift price is in Telegram Stars or getOption("gift_resale_ton_earnings_per_mille") Toncoins for each 1000 Toncoins paid for the gift if the gift price is in Toncoins
    public let price: GiftResalePrice?

    /// Identifier of the unique gift
    public let receivedGiftId: String?


    public init(
        price: GiftResalePrice?,
        receivedGiftId: String?
    ) {
        self.price = price
        self.receivedGiftId = receivedGiftId
    }
}

