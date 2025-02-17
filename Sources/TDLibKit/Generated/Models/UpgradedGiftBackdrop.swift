//
//  UpgradedGiftBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdrop: Codable, Equatable, Hashable {

    /// Colors of the backdrop
    public let colors: UpgradedGiftBackdropColors

    /// Name of the backdrop
    public let name: String

    /// The number of upgraded gift that receive this backdrop for each 1000 gifts upgraded
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

