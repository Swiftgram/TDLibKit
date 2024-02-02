//
//  SetStickerPositionInSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct SetStickerPositionInSet: Codable, Equatable, Hashable {

    /// New position of the sticker in the set, 0-based
    public let position: Int?

    /// Sticker
    public let sticker: InputFile?


    public init(
        position: Int?,
        sticker: InputFile?
    ) {
        self.position = position
        self.sticker = sticker
    }
}

