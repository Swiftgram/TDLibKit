//
//  RemoveRecentHashtag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Removes a hashtag from the list of recently used hashtags
public struct RemoveRecentHashtag: Codable, Equatable {

    /// Hashtag to delete
    public let hashtag: String?


    public init(hashtag: String?) {
        self.hashtag = hashtag
    }
}

