//
//  DatabaseStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-986f1ab4
//  https://github.com/tdlib/td/tree/986f1ab4
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

