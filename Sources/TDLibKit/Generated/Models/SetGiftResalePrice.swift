//
//  SetGiftResalePrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Changes resale price of a unique gift owned by the current user
public struct SetGiftResalePrice: Codable, Equatable, Hashable {

    /// Identifier of the unique gift
    public let receivedGiftId: String?

    /// The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift
    public let resaleStarCount: Int64?


    public init(
        receivedGiftId: String?,
        resaleStarCount: Int64?
    ) {
        self.receivedGiftId = receivedGiftId
        self.resaleStarCount = resaleStarCount
    }
}

