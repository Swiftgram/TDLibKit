//
//  EmojiStatusCustomEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Contains a list of custom emoji identifiers for emoji statuses
public struct EmojiStatusCustomEmojis: Codable, Equatable, Hashable {

    /// The list of custom emoji identifiers
    public let customEmojiIds: [TdInt64]


    public init(customEmojiIds: [TdInt64]) {
        self.customEmojiIds = customEmojiIds
    }
}

