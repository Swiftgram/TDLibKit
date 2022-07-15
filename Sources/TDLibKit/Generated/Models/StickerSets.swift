//
//  StickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Represents a list of sticker sets
public struct StickerSets: Codable, Equatable {

    /// List of sticker sets
    public let sets: [StickerSetInfo]

    /// Approximate total number of sticker sets found
    public let totalCount: Int


    public init(
        sets: [StickerSetInfo],
        totalCount: Int
    ) {
        self.sets = sets
        self.totalCount = totalCount
    }
}

