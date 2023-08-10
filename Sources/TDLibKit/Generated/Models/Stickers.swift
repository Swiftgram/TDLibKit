//
//  Stickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-f64268c5
//  https://github.com/tdlib/td/tree/f64268c5
//

import Foundation


/// Represents a list of stickers
public struct Stickers: Codable, Equatable, Hashable {

    /// List of stickers
    public let stickers: [Sticker]


    public init(stickers: [Sticker]) {
        self.stickers = stickers
    }
}

