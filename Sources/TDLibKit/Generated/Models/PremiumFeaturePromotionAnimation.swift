//
//  PremiumFeaturePromotionAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Describes a promotion animation for a Premium feature
public struct PremiumFeaturePromotionAnimation: Codable, Equatable {

    /// Promotion animation for the feature
    public let animation: Animation

    /// Premium feature
    public let feature: PremiumFeature


    public init(
        animation: Animation,
        feature: PremiumFeature
    ) {
        self.animation = animation
        self.feature = feature
    }
}

