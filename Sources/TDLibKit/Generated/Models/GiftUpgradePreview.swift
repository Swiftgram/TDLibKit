//
//  GiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains examples of possible upgraded gifts for the given regular gift
public struct GiftUpgradePreview: Codable, Equatable, Hashable {

    /// Examples of possible backdrops that can be chosen for the gift after upgrade
    public let backdrops: [UpgradedGiftBackdrop]

    /// Examples of possible models that can be chosen for the gift after upgrade
    public let models: [UpgradedGiftModel]

    /// Examples of possible symbols that can be chosen for the gift after upgrade
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

