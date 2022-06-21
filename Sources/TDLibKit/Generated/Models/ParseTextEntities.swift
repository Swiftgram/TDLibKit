//
//  ParseTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b393215d
//  https://github.com/tdlib/td/tree/b393215d
//

import Foundation


/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
public struct ParseTextEntities: Codable, Equatable {

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

