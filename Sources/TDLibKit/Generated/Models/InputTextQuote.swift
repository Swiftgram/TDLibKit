//
//  InputTextQuote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes manually chosen quote from another message
public struct InputTextQuote: Codable, Equatable, Hashable {

    /// Quote position in the original message in UTF-16 code units
    public let position: Int

    /// Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote
    public let text: FormattedText


    public init(
        position: Int,
        text: FormattedText
    ) {
        self.position = position
        self.text = text
    }
}

