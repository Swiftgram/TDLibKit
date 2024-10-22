//
//  EmojiCategory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Describes an emoji category
public struct EmojiCategory: Codable, Equatable, Hashable {

    /// Custom emoji sticker, which represents icon of the category
    public let icon: Sticker

    /// True, if the category must be shown first when choosing a sticker for the start page
    public let isGreeting: Bool

    /// Name of the category
    public let name: String

    /// Source of stickers for the emoji category
    public let source: EmojiCategorySource


    public init(
        icon: Sticker,
        isGreeting: Bool,
        name: String,
        source: EmojiCategorySource
    ) {
        self.icon = icon
        self.isGreeting = isGreeting
        self.name = name
        self.source = source
    }
}

