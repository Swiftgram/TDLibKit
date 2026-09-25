//
//  EmojiStatuses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-ea97bcdd
//  https://github.com/tdlib/td/tree/ea97bcdd
//

import Foundation


/// Contains a list of emoji statuses
public struct EmojiStatuses: Codable, Equatable, Hashable {

    /// The list of emoji statuses identifiers
    public let emojiStatuses: [EmojiStatus]


    public init(emojiStatuses: [EmojiStatus]) {
        self.emojiStatuses = emojiStatuses
    }
}

