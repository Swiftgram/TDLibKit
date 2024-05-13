//
//  EmojiKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-4e0c0009
//  https://github.com/tdlib/td/tree/4e0c0009
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

