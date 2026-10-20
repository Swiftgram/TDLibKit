//
//  EmojiKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
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

