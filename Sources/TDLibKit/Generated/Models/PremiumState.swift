//
//  PremiumState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
//

import Foundation


/// Contains state of Telegram Premium subscription and promotion videos for Premium features
public struct PremiumState: Codable, Equatable {

    /// The list of available promotion animations for Premium features
    public let animations: [PremiumFeaturePromotionAnimation]

    /// The list of available options for buying Telegram Premium
    public let paymentOptions: [PremiumPaymentOption]

    /// Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
    public let state: FormattedText


    public init(
        animations: [PremiumFeaturePromotionAnimation],
        paymentOptions: [PremiumPaymentOption],
        state: FormattedText
    ) {
        self.animations = animations
        self.paymentOptions = paymentOptions
        self.state = state
    }
}

