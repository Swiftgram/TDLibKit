//
//  UpgradedGiftBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

    /// The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded
    public let rarityPerMille: Int


    public init(
        colors: UpgradedGiftBackdropColors,
        id: Int,
        name: String,
        rarityPerMille: Int
    ) {
        self.colors = colors
        self.id = id
        self.name = name
        self.rarityPerMille = rarityPerMille
    }
}

