//
//  Gift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a gift that can be sent to another user or channel chat
public struct Gift: Codable, Equatable, Hashable, Identifiable {

    /// Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
    public let defaultSellStarCount: Int64

    /// Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only
    public let firstSendDate: Int

    /// Unique identifier of the gift
    public let id: TdInt64

    /// True, if the gift is a birthday gift
    public let isForBirthday: Bool

    /// Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only
    public let lastSendDate: Int

    /// Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out
    public let remainingCount: Int

    /// Number of Telegram Stars that must be paid for the gift
    public let starCount: Int64

    /// The sticker representing the gift
    public let sticker: Sticker

    /// Number of total times the gift can be purchased; 0 if not limited
    public let totalCount: Int

    /// Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible
    public let upgradeStarCount: Int64


    public init(
        defaultSellStarCount: Int64,
        firstSendDate: Int,
        id: TdInt64,
        isForBirthday: Bool,
        lastSendDate: Int,
        remainingCount: Int,
        starCount: Int64,
        sticker: Sticker,
        totalCount: Int,
        upgradeStarCount: Int64
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
        self.upgradeStarCount = upgradeStarCount
    }
}

