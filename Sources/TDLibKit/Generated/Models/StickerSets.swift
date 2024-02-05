//
//  StickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
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

