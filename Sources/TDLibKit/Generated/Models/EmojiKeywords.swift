//
//  EmojiKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

