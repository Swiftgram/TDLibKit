//
//  EmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-9b6ff586
//  https://github.com/tdlib/td/tree/9b6ff586
//

import Foundation


/// Represents a list of emoji categories
public struct EmojiCategories: Codable, Equatable, Hashable {

    /// List of categories
    public let categories: [EmojiCategory]


    public init(categories: [EmojiCategory]) {
        self.categories = categories
    }
}

