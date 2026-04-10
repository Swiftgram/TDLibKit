//
//  NetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// A full list of available network statistic entries
public struct NetworkStatistics: Codable, Equatable, Hashable {

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

