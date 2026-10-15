//
//  RemoveSearchedForTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
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

