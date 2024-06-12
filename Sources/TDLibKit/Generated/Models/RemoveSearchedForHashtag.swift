//
//  RemoveSearchedForHashtag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Removes a hashtag or a cashtag from the list of recently searched for hashtags or cashtags
public struct RemoveSearchedForHashtag: Codable, Equatable, Hashable {

    /// Hashtag or cashtag to delete
    public let hashtag: String?


    public init(hashtag: String?) {
        self.hashtag = hashtag
    }
}

