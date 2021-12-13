//
//  Stickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Represents a list of stickers
public struct Stickers: Codable, Equatable {

    /// List of stickers
    public let stickers: [Sticker]


    public init(stickers: [Sticker]) {
        self.stickers = stickers
    }
}

