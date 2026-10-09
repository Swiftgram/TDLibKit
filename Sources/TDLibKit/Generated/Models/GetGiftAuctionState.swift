//
//  GetGiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Returns auction state for a gift
public struct GetGiftAuctionState: Codable, Equatable, Hashable {

    /// Unique identifier of the auction
    public let auctionId: String?


    public init(auctionId: String?) {
        self.auctionId = auctionId
    }
}

