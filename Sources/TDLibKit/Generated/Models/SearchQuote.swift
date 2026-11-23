//
//  SearchQuote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Searches for a given quote in a text. Returns the start position of the found quote in UTF-16 code units. Returns a 404 error if the quote is not found. Can be called synchronously
public struct SearchQuote: Codable, Equatable, Hashable {

    /// Quote to search for
    public let quote: FormattedText?

    /// Approximate quote position in UTF-16 code units
    public let quotePosition: Int?

    /// Text in which to search for the quote
    public let text: FormattedText?


    public init(
        quote: FormattedText?,
        quotePosition: Int?,
        text: FormattedText?
    ) {
        self.quote = quote
        self.quotePosition = quotePosition
        self.text = text
    }
}

