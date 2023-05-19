//
//  EmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1da39552
//  https://github.com/tdlib/td/tree/1da39552
//

import Foundation


/// Represents a list of emoji categories
public struct EmojiCategories: Codable, Equatable {

    /// List of categories
    public let categories: [EmojiCategory]


    public init(categories: [EmojiCategory]) {
        self.categories = categories
    }
}

