//
//  SearchHashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Searches for recently used hashtags by their prefix
public struct SearchHashtags: Codable {

    /// The maximum number of hashtags to be returned
    public let limit: Int

    /// Hashtag prefix to search for
    public let prefix: String


    public init(
        limit: Int,
        prefix: String
    ) {
        self.limit = limit
        self.prefix = prefix
    }
}
