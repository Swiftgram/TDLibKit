//
//  GiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Contains examples of possible upgraded gifts for the given regular gift
public struct GiftUpgradePreview: Codable, Equatable, Hashable {

    /// Examples of possible backdrops that can be chosen for the gift after upgrade
    public let backdrops: [UpgradedGiftBackdrop]

    /// Examples of possible models that can be chosen for the gift after upgrade
    public let models: [UpgradedGiftModel]

    /// Next changes for the price for gift upgrade with more granularity than in prices
    public let nextPrices: [GiftUpgradePrice]

    /// Examples of price for gift upgrade from the maximum price to the minimum price
    public let prices: [GiftUpgradePrice]

    /// Examples of possible symbols that can be chosen for the gift after upgrade
    public let symbols: [UpgradedGiftSymbol]


    public init(
        backdrops: [UpgradedGiftBackdrop],
        models: [UpgradedGiftModel],
        nextPrices: [GiftUpgradePrice],
        prices: [GiftUpgradePrice],
        symbols: [UpgradedGiftSymbol]
    ) {
        self.backdrops = backdrops
        self.models = models
        self.nextPrices = nextPrices
        self.prices = prices
        self.symbols = symbols
    }
}

