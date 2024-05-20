//
//  PremiumState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains state of Telegram Premium subscription and promotion videos for Premium features
public struct PremiumState: Codable, Equatable, Hashable {

    /// The list of available promotion animations for Premium features
    public let animations: [PremiumFeaturePromotionAnimation]

    /// The list of available promotion animations for Business features
    public let businessAnimations: [BusinessFeaturePromotionAnimation]

    /// The list of available options for buying Telegram Premium
    public let paymentOptions: [PremiumStatePaymentOption]

    /// Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
    public let state: FormattedText


    public init(
        animations: [PremiumFeaturePromotionAnimation],
        businessAnimations: [BusinessFeaturePromotionAnimation],
        paymentOptions: [PremiumStatePaymentOption],
        state: FormattedText
    ) {
        self.animations = animations
        self.businessAnimations = businessAnimations
        self.paymentOptions = paymentOptions
        self.state = state
    }
}

