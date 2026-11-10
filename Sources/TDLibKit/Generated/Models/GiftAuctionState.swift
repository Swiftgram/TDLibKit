//
//  GiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Represents auction state of a gift
public struct GiftAuctionState: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift

    /// Auction state of the gift
    public let state: AuctionState


    public init(
        gift: Gift,
        state: AuctionState
    ) {
        self.gift = gift
        self.state = state
    }
}

