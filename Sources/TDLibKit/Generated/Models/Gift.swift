//
//  Gift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Describes a gift that can be sent to another user
public struct Gift: Codable, Equatable, Hashable, Identifiable {

    /// Number of Telegram Stars that can be claimed by the receiver instead of the gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
    public let defaultSellStarCount: Int64

    /// Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only
    public let firstSendDate: Int

    /// Unique identifier of the gift
    public let id: TdInt64

    /// True, if the gift is a birthday gift
    public let isForBirthday: Bool

    /// Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only
    public let lastSendDate: Int

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
        firstSendDate: Int,
        id: TdInt64,
        isForBirthday: Bool,
        lastSendDate: Int,
        remainingCount: Int,
        starCount: Int64,
        sticker: Sticker,
        totalCount: Int
    ) {
        self.defaultSellStarCount = defaultSellStarCount
        self.firstSendDate = firstSendDate
        self.id = id
        self.isForBirthday = isForBirthday
        self.lastSendDate = lastSendDate
        self.remainingCount = remainingCount
        self.starCount = starCount
        self.sticker = sticker
        self.totalCount = totalCount
    }
}

