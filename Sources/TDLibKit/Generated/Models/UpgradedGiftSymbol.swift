//
//  UpgradedGiftSymbol.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a symbol shown on the pattern of an upgraded gift
public struct UpgradedGiftSymbol: Codable, Equatable, Hashable {

    /// Name of the symbol
    public let name: String

    /// The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded
    public let rarityPerMille: Int

    /// The sticker representing the symbol
    public let sticker: Sticker


    public init(
        name: String,
        rarityPerMille: Int,
        sticker: Sticker
    ) {
        self.name = name
        self.rarityPerMille = rarityPerMille
        self.sticker = sticker
    }
}

