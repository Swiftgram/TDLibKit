//
//  StarSubscriptionPricing.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Describes subscription plan paid in Telegram Stars
public struct StarSubscriptionPricing: Codable, Equatable, Hashable {

    /// The number of seconds between consecutive Telegram Star debiting
    public let period: Int

    /// The Telegram Star amount that must be paid for each period
    public let starCount: Int64


    public init(
        period: Int,
        starCount: Int64
    ) {
        self.period = period
        self.starCount = starCount
    }
}

