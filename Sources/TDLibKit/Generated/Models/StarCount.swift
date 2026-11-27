//
//  StarCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

