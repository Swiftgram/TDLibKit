//
//  UpgradedGiftBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdrop: Codable, Equatable, Hashable {

    /// A color in the center of the backdrop in the RGB format
    public let centerColor: Int

    /// A color on the edges of the backdrop in the RGB format
    public let edgeColor: Int

    /// Name of the backdrop
    public let name: String

    /// The number of upgraded gift that receive this backdrop for each 1000 gifts upgraded
    public let rarityPerMille: Int

    /// A color to be applied for the symbol in the RGB format
    public let symbolColor: Int

    /// A color for the text on the backdrop in the RGB format
    public let textColor: Int


    public init(
        centerColor: Int,
        edgeColor: Int,
        name: String,
        rarityPerMille: Int,
        symbolColor: Int,
        textColor: Int
    ) {
        self.centerColor = centerColor
        self.edgeColor = edgeColor
        self.name = name
        self.rarityPerMille = rarityPerMille
        self.symbolColor = symbolColor
        self.textColor = textColor
    }
}

