//
//  SearchEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Searches for emojis by keywords. Supported only if the file database is enabled
public struct SearchEmojis: Codable, Equatable, Hashable {

    /// Pass true if only emojis, which exactly match the text, needs to be returned
    public let exactMatch: Bool?

    /// List of possible IETF language tags of the user's input language; may be empty if unknown
    public let inputLanguageCodes: [String]?

    /// Text to search for
    public let text: String?


    public init(
        exactMatch: Bool?,
        inputLanguageCodes: [String]?,
        text: String?
    ) {
        self.exactMatch = exactMatch
        self.inputLanguageCodes = inputLanguageCodes
        self.text = text
    }
}

