//
//  GetStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is non-empty, favorite and recently used stickers may also be returned
public struct GetStickers: Codable, Equatable {

    /// String representation of emoji. If empty, returns all known installed stickers
    public let emoji: String?

    /// The maximum number of stickers to be returned
    public let limit: Int?


    public init(
        emoji: String?,
        limit: Int?
    ) {
        self.emoji = emoji
        self.limit = limit
    }
}

