//
//  GetEmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-2820a9d2
//  https://github.com/tdlib/td/tree/2820a9d2
//

import Foundation


/// Returns available emoji categories
public struct GetEmojiCategories: Codable, Equatable, Hashable {

    /// Type of emoji categories to return; pass null to get default emoji categories
    public let type: EmojiCategoryType?


    public init(type: EmojiCategoryType?) {
        self.type = type
    }
}

