//
//  UpgradedGiftBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdrop: Codable, Equatable, Hashable, Identifiable {

    /// Colors of the backdrop
    public let colors: UpgradedGiftBackdropColors

    /// Unique identifier of the backdrop
    public let id: Int

    /// Name of the backdrop
    public let name: String

    /// The rarity of the backdrop
    public let rarity: UpgradedGiftAttributeRarity


    public init(
        colors: UpgradedGiftBackdropColors,
        id: Int,
        name: String,
        rarity: UpgradedGiftAttributeRarity
    ) {
        self.colors = colors
        self.id = id
        self.name = name
        self.rarity = rarity
    }
}

