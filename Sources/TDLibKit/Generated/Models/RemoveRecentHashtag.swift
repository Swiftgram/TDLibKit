//
//  RemoveRecentHashtag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Removes a hashtag from the list of recently used hashtags
public struct RemoveRecentHashtag: Codable, Equatable, Hashable {

    /// Hashtag to delete
    public let hashtag: String?


    public init(hashtag: String?) {
        self.hashtag = hashtag
    }
}

