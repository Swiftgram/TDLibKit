//
//  EmojiCategories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
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

