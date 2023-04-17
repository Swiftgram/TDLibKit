//
//  GetPremiumStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

