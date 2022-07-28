//
//  PremiumState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains state of Telegram Premium subscription and promotion videos for Premium features
public struct PremiumState: Codable, Equatable {

    /// The list of available promotion animations for Premium features
    public let animations: [PremiumFeaturePromotionAnimation]

    /// ISO 4217 currency code for Telegram Premium subscription payment
    public let currency: String

    /// Monthly subscription payment for Telegram Premium subscription, in the smallest units of the currency
    public let monthlyAmount: Int64

    /// Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
    public let state: FormattedText


    public init(
        animations: [PremiumFeaturePromotionAnimation],
        currency: String,
        monthlyAmount: Int64,
        state: FormattedText
    ) {
        self.animations = animations
        self.currency = currency
        self.monthlyAmount = monthlyAmount
        self.state = state
    }
}

