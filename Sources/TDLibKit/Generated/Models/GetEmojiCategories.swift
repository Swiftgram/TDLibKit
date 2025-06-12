//
//  GetEmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
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

