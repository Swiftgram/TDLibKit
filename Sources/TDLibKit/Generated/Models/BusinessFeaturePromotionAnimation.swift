//
//  BusinessFeaturePromotionAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
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

