//
//  TrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-6c5441c8
//  https://github.com/tdlib/td/tree/6c5441c8
//

import Foundation


/// Represents a list of trending sticker sets
public struct TrendingStickerSets: Codable, Equatable, Hashable {

    /// True, if the list contains sticker sets with premium stickers
    public let isPremium: Bool

    /// List of trending sticker sets
    public let sets: [StickerSetInfo]

    /// Approximate total number of trending sticker sets
    public let totalCount: Int


    public init(
        isPremium: Bool,
        sets: [StickerSetInfo],
        totalCount: Int
    ) {
        self.isPremium = isPremium
        self.sets = sets
        self.totalCount = totalCount
    }
}

