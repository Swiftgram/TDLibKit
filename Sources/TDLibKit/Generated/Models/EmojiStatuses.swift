//
//  EmojiStatuses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-d912fd14
//  https://github.com/tdlib/td/tree/d912fd14
//

import Foundation


/// Contains a list of emoji statuses
public struct EmojiStatuses: Codable, Equatable {

    /// The list of emoji statuses
    public let emojiStatuses: [EmojiStatus]


    public init(emojiStatuses: [EmojiStatus]) {
        self.emojiStatuses = emojiStatuses
    }
}

