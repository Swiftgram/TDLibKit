//
//  ParseTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode, TextUrl and MentionName entities from a marked-up text. Can be called synchronously
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

