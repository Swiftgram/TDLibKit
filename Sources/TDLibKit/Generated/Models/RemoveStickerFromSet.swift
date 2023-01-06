//
//  RemoveStickerFromSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-19cde80f
//  https://github.com/tdlib/td/tree/19cde80f
//

import Foundation


/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct RemoveStickerFromSet: Codable, Equatable {

    /// Sticker
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

