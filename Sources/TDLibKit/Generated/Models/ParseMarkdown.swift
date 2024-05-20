//
//  ParseMarkdown.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
public struct ParseMarkdown: Codable, Equatable, Hashable {

    /// The text to parse. For example, "__italic__ ~~strikethrough~~ ||spoiler|| **bold** `code` ```pre``` __[italic__ text_url](telegram.org) __italic**bold italic__bold**"
    public let text: FormattedText?


    public init(text: FormattedText?) {
        self.text = text
    }
}

