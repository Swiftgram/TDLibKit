//
//  UpgradedGiftSymbol.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes a symbol shown on the pattern of an upgraded gift
public struct UpgradedGiftSymbol: Codable, Equatable, Hashable {

    /// Name of the symbol
    public let name: String

    /// The rarity of the symbol
    public let rarity: UpgradedGiftAttributeRarity

    /// The sticker representing the symbol
    public let sticker: Sticker


    public init(
        name: String,
        rarity: UpgradedGiftAttributeRarity,
        sticker: Sticker
    ) {
        self.name = name
        self.rarity = rarity
        self.sticker = sticker
    }
}

