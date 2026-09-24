//
//  EmojiKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-8b765a16
//  https://github.com/tdlib/td/tree/8b765a16
//

import Foundation


/// Represents a list of emojis with their keywords
public struct EmojiKeywords: Codable, Equatable, Hashable {

    /// List of emojis with their keywords
    public let emojiKeywords: [EmojiKeyword]


    public init(emojiKeywords: [EmojiKeyword]) {
        self.emojiKeywords = emojiKeywords
    }
}

