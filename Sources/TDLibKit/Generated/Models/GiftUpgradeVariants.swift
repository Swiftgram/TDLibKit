//
//  GiftUpgradeVariants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains all possible variants of upgraded gifts for the given regular gift
public struct GiftUpgradeVariants: Codable, Equatable, Hashable {

    /// Backdrops that can be chosen for the gift after upgrade
    public let backdrops: [UpgradedGiftBackdrop]

    /// Models that can be chosen for the gift after upgrade
    public let models: [UpgradedGiftModel]

    /// Symbols that can be chosen for the gift after upgrade
    public let symbols: [UpgradedGiftSymbol]


    public init(
        backdrops: [UpgradedGiftBackdrop],
        models: [UpgradedGiftModel],
        symbols: [UpgradedGiftSymbol]
    ) {
        self.backdrops = backdrops
        self.models = models
        self.symbols = symbols
    }
}

