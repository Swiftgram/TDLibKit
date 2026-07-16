//
//  BusinessFeaturePromotionAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Describes a promotion animation for a Business feature
public struct BusinessFeaturePromotionAnimation: Codable, Equatable, Hashable {

    /// Promotion animation for the feature
    public let animation: Animation

    /// Business feature
    public let feature: BusinessFeature


    public init(
        animation: Animation,
        feature: BusinessFeature
    ) {
        self.animation = animation
        self.feature = feature
    }
}

