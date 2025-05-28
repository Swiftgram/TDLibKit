//
//  GetSearchSponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

