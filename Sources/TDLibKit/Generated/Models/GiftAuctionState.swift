//
//  GiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Represent auction state of a gift
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

