//
//  GetGiftAuctionAcquiredGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
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

