//
//  SearchHashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Searches for recently used hashtags by their prefix
public struct SearchHashtags: Codable, Equatable {

    /// The maximum number of hashtags to be returned
    public let limit: Int?

    /// Hashtag prefix to search for
    public let prefix: String?


    public init(
        limit: Int?,
        prefix: String?
    ) {
        self.limit = limit
        self.prefix = prefix
    }
}

