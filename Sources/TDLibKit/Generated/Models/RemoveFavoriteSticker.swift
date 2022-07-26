//
//  RemoveFavoriteSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Removes a sticker from the list of favorite stickers
public struct RemoveFavoriteSticker: Codable, Equatable {

    /// Sticker file to delete from the list
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

