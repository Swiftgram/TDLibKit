//
//  StickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-f441415d
//  https://github.com/tdlib/td/tree/f441415d
//

import Foundation


/// Represents a list of sticker sets
public struct StickerSets: Codable, Equatable, Hashable {

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

