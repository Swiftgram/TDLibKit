//
//  UpgradedGiftModel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Describes a model of an upgraded gift
public struct UpgradedGiftModel: Codable, Equatable, Hashable {

    /// Name of the model
    public let name: String

    /// The number of upgraded gift that receive this model for each 1000 gifts upgraded
    public let rarityPerMille: Int

    /// The sticker representing the upgraded gift
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

