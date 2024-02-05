//
//  ParseTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, Code, Pre, PreCode, TextUrl and MentionName entities from a marked-up text. Can be called synchronously
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

