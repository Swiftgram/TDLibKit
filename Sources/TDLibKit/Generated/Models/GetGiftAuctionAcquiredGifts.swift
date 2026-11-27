//
//  GetGiftAuctionAcquiredGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns the gifts that were acquired by the current user at a gift auction
public struct GetGiftAuctionAcquiredGifts: Codable, Equatable, Hashable {

    /// Identifier of the auctioned gift
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

