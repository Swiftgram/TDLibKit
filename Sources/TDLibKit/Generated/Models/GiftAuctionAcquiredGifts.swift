//
//  GiftAuctionAcquiredGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
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

