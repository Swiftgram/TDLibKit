//
//  GetGiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

