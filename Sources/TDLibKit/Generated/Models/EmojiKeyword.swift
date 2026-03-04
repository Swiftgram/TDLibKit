//
//  EmojiKeyword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Represents an emoji with its keyword
public struct EmojiKeyword: Codable, Equatable, Hashable {

    /// The emoji
    public let emoji: String

    /// The keyword
    public let keyword: String


    public init(
        emoji: String,
        keyword: String
    ) {
        self.emoji = emoji
        self.keyword = keyword
    }
}

