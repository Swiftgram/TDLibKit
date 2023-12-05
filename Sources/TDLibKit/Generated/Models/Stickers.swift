//
//  Stickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
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

