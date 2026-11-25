//
//  GetSearchSponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

