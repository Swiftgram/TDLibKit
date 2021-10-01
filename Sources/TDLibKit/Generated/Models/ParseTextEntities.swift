//
//  ParseTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
public struct ParseTextEntities: Codable {

    /// Text parse mode
    public let parseMode: TextParseMode

    /// The text to parse
    public let text: String


    public init(
        parseMode: TextParseMode,
        text: String
    ) {
        self.parseMode = parseMode
        self.text = text
    }
}

