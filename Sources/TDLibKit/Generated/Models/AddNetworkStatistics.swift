//
//  AddNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Adds the specified data to data usage statistics. Can be called before authorization
public struct AddNetworkStatistics: Codable {

    /// The network statistics entry with the data to be added to statistics
    public let entry: NetworkStatisticsEntry


    public init(entry: NetworkStatisticsEntry) {
        self.entry = entry
    }
}

