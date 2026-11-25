//
//  GiftUpgradePrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes a price that must be paid to upgrade a gift
public struct GiftUpgradePrice: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the price will be in effect
    public let date: Int

    /// The Telegram Star amount that must be paid to upgrade the gift
    public let starCount: Int64


    public init(
        date: Int,
        starCount: Int64
    ) {
        self.date = date
        self.starCount = starCount
    }
}

