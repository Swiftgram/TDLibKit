//
//  UpgradedGiftBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdrop: Codable, Equatable, Hashable {

    /// Colors of the backdrop
    public let colors: UpgradedGiftBackdropColors

    /// Name of the backdrop
    public let name: String

    /// The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded
    public let rarityPerMille: Int


    public init(
        colors: UpgradedGiftBackdropColors,
        name: String,
        rarityPerMille: Int
    ) {
        self.colors = colors
        self.name = name
        self.rarityPerMille = rarityPerMille
    }
}

