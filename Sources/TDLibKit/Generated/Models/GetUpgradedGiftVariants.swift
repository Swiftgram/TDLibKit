//
//  GetUpgradedGiftVariants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Returns all possible variants of upgraded gifts for a regular gift
public struct GetUpgradedGiftVariants: Codable, Equatable, Hashable {

    /// Identifier of the regular gift
    public let regularGiftId: TdInt64?

    /// Pass true to get models that can be obtained by crafting a gift from upgraded gifts
    public let returnCraftModels: Bool?

    /// Pass true to get models that can be obtained by upgrading a regular gift
    public let returnUpgradeModels: Bool?


    public init(
        regularGiftId: TdInt64?,
        returnCraftModels: Bool?,
        returnUpgradeModels: Bool?
    ) {
        self.regularGiftId = regularGiftId
        self.returnCraftModels = returnCraftModels
        self.returnUpgradeModels = returnUpgradeModels
    }
}

