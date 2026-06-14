//
//  GiftChatThemes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
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

