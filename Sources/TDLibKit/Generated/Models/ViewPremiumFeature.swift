//
//  ViewPremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen
public struct ViewPremiumFeature: Codable, Equatable, Hashable {

    /// The viewed premium feature
    public let feature: PremiumFeature?


    public init(feature: PremiumFeature?) {
        self.feature = feature
    }
}

