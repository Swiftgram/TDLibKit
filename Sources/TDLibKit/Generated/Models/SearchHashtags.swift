//
//  SearchHashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Searches for recently used hashtags by their prefix
public struct SearchHashtags: Codable, Equatable, Hashable {

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

