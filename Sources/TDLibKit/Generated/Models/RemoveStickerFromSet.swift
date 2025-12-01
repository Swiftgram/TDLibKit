//
//  RemoveStickerFromSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Removes a sticker from the set to which it belongs. The sticker set must be owned by the current user
public struct RemoveStickerFromSet: Codable, Equatable, Hashable {

    /// Sticker to remove from the set
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

