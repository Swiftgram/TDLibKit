//
//  GetPublicPostSearchLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Checks public post search limits without actually performing the search
public struct GetPublicPostSearchLimits: Codable, Equatable, Hashable {

    /// Query that will be searched for
    public let query: String?


    public init(query: String?) {
        self.query = query
    }
}

