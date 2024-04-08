//
//  GetEmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Returns available emojis categories
public struct GetEmojiCategories: Codable, Equatable, Hashable {

    /// Type of emoji categories to return; pass null to get default emoji categories
    public let type: EmojiCategoryType?


    public init(type: EmojiCategoryType?) {
        self.type = type
    }
}

