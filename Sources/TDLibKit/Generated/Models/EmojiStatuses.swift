//
//  EmojiStatuses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Contains a list of custom emoji identifiers for emoji statuses
public struct EmojiStatuses: Codable, Equatable, Hashable {

    /// The list of custom emoji identifiers
    public let customEmojiIds: [TdInt64]


    public init(customEmojiIds: [TdInt64]) {
        self.customEmojiIds = customEmojiIds
    }
}

