//
//  NetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// A full list of available network statistic entries
public struct NetworkStatistics: Codable, Equatable {

    /// Network statistics entries
    public let entries: [NetworkStatisticsEntry]

    /// Point in time (Unix timestamp) from which the statistics are collected
    public let sinceDate: Int


    public init(
        entries: [NetworkStatisticsEntry],
        sinceDate: Int
    ) {
        self.entries = entries
        self.sinceDate = sinceDate
    }
}

