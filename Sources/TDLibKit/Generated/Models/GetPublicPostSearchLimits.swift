//
//  GetPublicPostSearchLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
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

