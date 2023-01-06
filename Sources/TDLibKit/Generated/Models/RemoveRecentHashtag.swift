//
//  RemoveRecentHashtag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-19cde80f
//  https://github.com/tdlib/td/tree/19cde80f
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

