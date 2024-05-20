//
//  TextQuote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes manually or automatically chosen quote from another message
public struct TextQuote: Codable, Equatable, Hashable {

    /// True, if the quote was manually chosen by the message sender
    public let isManual: Bool

    /// Approximate quote position in the original message in UTF-16 code units as specified by the message sender
    public let position: Int

    /// Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text
    public let text: FormattedText


    public init(
        isManual: Bool,
        position: Int,
        text: FormattedText
    ) {
        self.isManual = isManual
        self.position = position
        self.text = text
    }
}

