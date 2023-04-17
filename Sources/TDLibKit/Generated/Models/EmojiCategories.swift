//
//  EmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

