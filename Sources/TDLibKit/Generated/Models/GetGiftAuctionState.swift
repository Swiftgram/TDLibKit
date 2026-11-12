//
//  GetGiftAuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

