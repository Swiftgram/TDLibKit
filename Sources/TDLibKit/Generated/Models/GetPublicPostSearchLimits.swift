//
//  GetPublicPostSearchLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
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

