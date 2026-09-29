//
//  GetSearchSponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-0efabf93
//  https://github.com/tdlib/td/tree/0efabf93
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

