//
//  GiftAuctionAcquiredGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-fe61d641
//  https://github.com/tdlib/td/tree/fe61d641
//

import Foundation


/// Represents a list of gifts that were acquired by the current user on an auction
public struct GiftAuctionAcquiredGifts: Codable, Equatable, Hashable {

    /// The list of acquired gifts
    public let gifts: [GiftAuctionAcquiredGift]


    public init(gifts: [GiftAuctionAcquiredGift]) {
        self.gifts = gifts
    }
}

