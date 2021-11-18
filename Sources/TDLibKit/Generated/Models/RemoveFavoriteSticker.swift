//
//  RemoveFavoriteSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Removes a sticker from the list of favorite stickers
public struct RemoveFavoriteSticker: Codable {

    /// Sticker file to delete from the list
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

