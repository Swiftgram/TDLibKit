//
//  ParseTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode, TextUrl, MentionName, and DateTime entities from a marked-up text. Can be called synchronously
public struct ParseTextEntities: Codable, Equatable, Hashable {

    /// Text parse mode
    public let parseMode: TextParseMode?

    /// The text to parse
    public let text: String?


    public init(
        parseMode: TextParseMode?,
        text: String?
    ) {
        self.parseMode = parseMode
        self.text = text
    }
}

