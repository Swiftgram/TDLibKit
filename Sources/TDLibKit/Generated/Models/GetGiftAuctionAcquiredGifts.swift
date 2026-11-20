//
//  GetGiftAuctionAcquiredGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Returns the gifts that were acquired by the current user on a gift auction
public struct GetGiftAuctionAcquiredGifts: Codable, Equatable, Hashable {

    /// Identifier of the auctioned gift
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

