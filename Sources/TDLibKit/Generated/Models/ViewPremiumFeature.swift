//
//  ViewPremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
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

