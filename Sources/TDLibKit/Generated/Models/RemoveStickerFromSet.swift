//
//  RemoveStickerFromSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-5bbfc1cf
//  https://github.com/tdlib/td/tree/5bbfc1cf
//

import Foundation


/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct RemoveStickerFromSet: Codable, Equatable, Hashable {

    /// Sticker
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

