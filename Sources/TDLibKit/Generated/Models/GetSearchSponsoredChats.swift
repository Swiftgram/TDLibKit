//
//  GetSearchSponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
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

