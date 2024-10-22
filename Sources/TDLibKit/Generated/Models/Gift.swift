//
//  Gift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Describes a gift that can be sent to another user
public struct Gift: Codable, Equatable, Hashable, Identifiable {

    /// Number of Telegram Stars that can be claimed by the receiver instead of the gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
    public let defaultSellStarCount: Int64

    /// Unique identifier of the gift
    public let id: TdInt64

    /// Number of remaining times the gift can be purchased by all users; 0 if not limited or the gift was sold out
    public let remainingCount: Int

    /// Number of Telegram Stars that must be paid for the gift
    public let starCount: Int64

    /// The sticker representing the gift
    public let sticker: Sticker

    /// Number of total times the gift can be purchased by all users; 0 if not limited
    public let totalCount: Int


    public init(
        defaultSellStarCount: Int64,
        id: TdInt64,
        remainingCount: Int,
        starCount: Int64,
        sticker: Sticker,
        totalCount: Int
    ) {
        self.defaultSellStarCount = defaultSellStarCount
        self.id = id
        self.remainingCount = remainingCount
        self.starCount = starCount
        self.sticker = sticker
        self.totalCount = totalCount
    }
}

