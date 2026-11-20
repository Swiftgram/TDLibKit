//
//  GiftChatThemes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains a list of chat themes based on upgraded gifts
public struct GiftChatThemes: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// A list of chat themes
    public let themes: [GiftChatTheme]


    public init(
        nextOffset: String,
        themes: [GiftChatTheme]
    ) {
        self.nextOffset = nextOffset
        self.themes = themes
    }
}

