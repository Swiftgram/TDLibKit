//
//  GiftsForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-bb474a20
//  https://github.com/tdlib/td/tree/bb474a20
//

import Foundation


/// Describes gifts available for resale
public struct GiftsForResale: Codable, Equatable, Hashable {

    /// Available backdrops; for searchGiftsForResale requests without offset and attributes only
    public let backdrops: [UpgradedGiftBackdropCount]

    /// The gifts
    public let gifts: [GiftForResale]

    /// Available models; for searchGiftsForResale requests without offset and attributes only
    public let models: [UpgradedGiftModelCount]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Available symbols; for searchGiftsForResale requests without offset and attributes only
    public let symbols: [UpgradedGiftSymbolCount]

    /// Total number of gifts found
    public let totalCount: Int


    public init(
        backdrops: [UpgradedGiftBackdropCount],
        gifts: [GiftForResale],
        models: [UpgradedGiftModelCount],
        nextOffset: String,
        symbols: [UpgradedGiftSymbolCount],
        totalCount: Int
    ) {
        self.backdrops = backdrops
        self.gifts = gifts
        self.models = models
        self.nextOffset = nextOffset
        self.symbols = symbols
        self.totalCount = totalCount
    }
}

