//
//  GetSearchedForTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-ea97bcdd
//  https://github.com/tdlib/td/tree/ea97bcdd
//

import Foundation


/// Returns recently searched for hashtags or cashtags by their prefix
public struct GetSearchedForTags: Codable, Equatable, Hashable {

    /// The maximum number of items to be returned
    public let limit: Int?

    /// Prefix of hashtags or cashtags to return
    public let tagPrefix: String?


    public init(
        limit: Int?,
        tagPrefix: String?
    ) {
        self.limit = limit
        self.tagPrefix = tagPrefix
    }
}

