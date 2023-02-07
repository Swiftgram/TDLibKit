//
//  EmojiStatuses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-3d0140b3
//  https://github.com/tdlib/td/tree/3d0140b3
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

