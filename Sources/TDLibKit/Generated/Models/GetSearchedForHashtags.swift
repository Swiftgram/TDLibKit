//
//  GetSearchedForHashtags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
//

import Foundation


/// Returns recently searched for hashtags or cashtags by their prefix
public struct GetSearchedForHashtags: Codable, Equatable, Hashable {

    /// The maximum number of items to be returned
    public let limit: Int?

    /// Prefix of hashtags or cashtags to return
    public let prefix: String?


    public init(
        limit: Int?,
        prefix: String?
    ) {
        self.limit = limit
        self.prefix = prefix
    }
}

