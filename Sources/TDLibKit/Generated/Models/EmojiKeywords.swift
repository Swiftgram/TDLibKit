//
//  EmojiKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-77b34797
//  https://github.com/tdlib/td/tree/77b34797
//

import Foundation


/// Represents a list of emoji with their keywords
public struct EmojiKeywords: Codable, Equatable, Hashable {

    /// List of emoji with their keywords
    public let emojiKeywords: [EmojiKeyword]


    public init(emojiKeywords: [EmojiKeyword]) {
        self.emojiKeywords = emojiKeywords
    }
}

