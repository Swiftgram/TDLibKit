//
//  TrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

