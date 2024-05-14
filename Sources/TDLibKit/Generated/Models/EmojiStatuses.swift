//
//  EmojiStatuses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-39d82693
//  https://github.com/tdlib/td/tree/39d82693
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

