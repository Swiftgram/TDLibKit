//
//  DatabaseStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Contains database statistics
public struct DatabaseStatistics: Codable {

    /// Database statistics in an unspecified human-readable format
    public let statistics: String


    public init(statistics: String) {
        self.statistics = statistics
    }
}
