//
//  DatabaseStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-54b34e91
//  https://github.com/tdlib/td/tree/54b34e91
//

import Foundation


/// Contains database statistics
public struct DatabaseStatistics: Codable, Equatable {

    /// Database statistics in an unspecified human-readable format
    public let statistics: String


    public init(statistics: String) {
        self.statistics = statistics
    }
}

