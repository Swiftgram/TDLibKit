//
//  GetSearchSponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Returns sponsored chats to be shown in the search results
public struct GetSearchSponsoredChats: Codable, Equatable, Hashable {

    /// Query the user searches for
    public let query: String?


    public init(query: String?) {
        self.query = query
    }
}

