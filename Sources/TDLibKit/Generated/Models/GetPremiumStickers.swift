//
//  GetPremiumStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-5ed1d22d
//  https://github.com/tdlib/td/tree/5ed1d22d
//

import Foundation


/// Returns premium stickers from regular sticker sets
public struct GetPremiumStickers: Codable, Equatable {

    /// The maximum number of stickers to be returned; 0-100
    public let limit: Int?


    public init(limit: Int?) {
        self.limit = limit
    }
}

