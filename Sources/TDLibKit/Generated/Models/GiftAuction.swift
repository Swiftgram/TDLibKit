//
//  GiftAuction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes an auction on which a gift can be purchased
public struct GiftAuction: Codable, Equatable, Hashable, Identifiable {

    /// Number of gifts distributed in each round
    public let giftsPerRound: Int

    /// Identifier of the auction
    public let id: String


    public init(
        giftsPerRound: Int,
        id: String
    ) {
        self.giftsPerRound = giftsPerRound
        self.id = id
    }
}

