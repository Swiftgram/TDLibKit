//
//  GetStickerEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
public struct GetStickerEmojis: Codable, Equatable {

    /// Sticker file identifier
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

