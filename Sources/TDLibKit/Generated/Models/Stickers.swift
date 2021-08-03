//
//  Stickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Represents a list of stickers
public struct Stickers: Codable {

    /// List of stickers
    public let stickers: [Sticker]


    public init(stickers: [Sticker]) {
        self.stickers = stickers
    }
}

