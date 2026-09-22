//
//  GetPremiumStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
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

