//
//  GetEmojiSuggestionsUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
public struct GetEmojiSuggestionsUrl: Codable, Equatable, Hashable {

    /// Language code for which the emoji replacements will be suggested
    public let languageCode: String?


    public init(languageCode: String?) {
        self.languageCode = languageCode
    }
}

