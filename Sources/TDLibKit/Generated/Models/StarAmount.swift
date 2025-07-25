//
//  StarAmount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a possibly non-integer amount of Telegram Stars
public struct StarAmount: Codable, Equatable, Hashable {

    /// The number of 1/1000000000 shares of Telegram Stars; from -999999999 to 999999999
    public let nanostarCount: Int

    /// The integer amount of Telegram Stars rounded to 0
    public let starCount: Int64


    public init(
        nanostarCount: Int,
        starCount: Int64
    ) {
        self.nanostarCount = nanostarCount
        self.starCount = starCount
    }
}

