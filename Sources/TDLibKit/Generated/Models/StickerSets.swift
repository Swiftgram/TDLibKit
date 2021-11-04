//
//  StickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Represents a list of sticker sets
public struct StickerSets: Codable {

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

