//
//  EmojiKeyword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
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

