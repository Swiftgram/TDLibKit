//
//  UpgradedGiftSymbolCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Describes a symbol shown on the pattern of an upgraded gift
public struct UpgradedGiftSymbolCount: Codable, Equatable, Hashable {

    /// The symbol
    public let symbol: UpgradedGiftSymbol

    /// Total number of gifts with the symbol
    public let totalCount: Int


    public init(
        symbol: UpgradedGiftSymbol,
        totalCount: Int
    ) {
        self.symbol = symbol
        self.totalCount = totalCount
    }
}

