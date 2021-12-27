//
//  GetEmojiSuggestionsUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-b4925dc4
//  https://github.com/tdlib/td/tree/b4925dc4
//

import Foundation


/// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
public struct GetEmojiSuggestionsUrl: Codable, Equatable {

    /// Language code for which the emoji replacements will be suggested
    public let languageCode: String?


    public init(languageCode: String?) {
        self.languageCode = languageCode
    }
}

