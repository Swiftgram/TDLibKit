//
//  RemoveSearchedForTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-2820a9d2
//  https://github.com/tdlib/td/tree/2820a9d2
//

import Foundation


/// Removes a hashtag or a cashtag from the list of recently searched for hashtags or cashtags
public struct RemoveSearchedForTag: Codable, Equatable, Hashable {

    /// Hashtag or cashtag to delete
    public let tag: String?


    public init(tag: String?) {
        self.tag = tag
    }
}

