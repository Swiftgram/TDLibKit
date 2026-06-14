//
//  StarCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Contains a number of Telegram Stars
public struct StarCount: Codable, Equatable, Hashable {

    /// Number of Telegram Stars
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

