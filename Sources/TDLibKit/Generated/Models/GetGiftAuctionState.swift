//
//  GetGiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Returns the auction state for a gift
public struct GetGiftAuctionState: Codable, Equatable, Hashable {

    /// Unique identifier of the auction
    public let auctionId: String?


    public init(auctionId: String?) {
        self.auctionId = auctionId
    }
}

