//
//  StarSubscriptionPricing.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Describes subscription plan paid in Telegram Stars
public struct StarSubscriptionPricing: Codable, Equatable, Hashable {

    /// The number of seconds between consecutive Telegram Star debiting
    public let period: Int

    /// The amount of Telegram Stars that must be paid for each period
    public let starCount: Int64


    public init(
        period: Int,
        starCount: Int64
    ) {
        self.period = period
        self.starCount = starCount
    }
}

