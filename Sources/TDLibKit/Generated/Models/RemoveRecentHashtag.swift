//
//  RemoveRecentHashtag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

