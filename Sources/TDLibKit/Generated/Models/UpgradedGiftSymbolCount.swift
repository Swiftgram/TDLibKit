//
//  UpgradedGiftSymbolCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
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

