//
//  DatabaseStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Contains database statistics
public struct DatabaseStatistics: Codable, Equatable, Hashable {

    /// Database statistics in an unspecified human-readable format
    public let statistics: String


    public init(statistics: String) {
        self.statistics = statistics
    }
}

