//
//  RemoveStickerFromSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct RemoveStickerFromSet: Codable {

    /// Sticker
    public let sticker: InputFile


    public init(sticker: InputFile) {
        self.sticker = sticker
    }
}
