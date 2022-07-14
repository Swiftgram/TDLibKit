//
//  ViewPremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen
public struct ViewPremiumFeature: Codable, Equatable {

    /// The viewed premium feature
    public let feature: PremiumFeature?


    public init(feature: PremiumFeature?) {
        self.feature = feature
    }
}

