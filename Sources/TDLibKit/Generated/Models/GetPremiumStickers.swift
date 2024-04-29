//
//  GetPremiumStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-77b34797
//  https://github.com/tdlib/td/tree/77b34797
//

import Foundation


/// Returns premium stickers from regular sticker sets
public struct GetPremiumStickers: Codable, Equatable, Hashable {

    /// The maximum number of stickers to be returned; 0-100
    public let limit: Int?


    public init(limit: Int?) {
        self.limit = limit
    }
}

