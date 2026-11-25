//
//  ViewPremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

