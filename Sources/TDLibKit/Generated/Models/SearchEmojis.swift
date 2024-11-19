//
//  SearchEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Searches for emojis by keywords. Supported only if the file database is enabled. Order of results is unspecified
public struct SearchEmojis: Codable, Equatable, Hashable {

    /// List of possible IETF language tags of the user's input language; may be empty if unknown
    public let inputLanguageCodes: [String]?

    /// Text to search for
    public let text: String?


    public init(
        inputLanguageCodes: [String]?,
        text: String?
    ) {
        self.inputLanguageCodes = inputLanguageCodes
        self.text = text
    }
}

