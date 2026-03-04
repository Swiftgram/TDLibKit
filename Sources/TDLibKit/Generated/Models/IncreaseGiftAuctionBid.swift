//
//  IncreaseGiftAuctionBid.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Increases a bid for an auction gift without changing gift text and receiver
public struct IncreaseGiftAuctionBid: Codable, Equatable, Hashable {

    /// Identifier of the gift to put the bid on
    public let giftId: TdInt64?

    /// The number of Telegram Stars to put in the bid
    public let starCount: Int64?


    public init(
        giftId: TdInt64?,
        starCount: Int64?
    ) {
        self.giftId = giftId
        self.starCount = starCount
    }
}

