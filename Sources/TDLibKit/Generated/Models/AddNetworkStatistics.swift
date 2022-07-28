//
//  AddNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Adds the specified data to data usage statistics. Can be called before authorization
public struct AddNetworkStatistics: Codable, Equatable {

    /// The network statistics entry with the data to be added to statistics
    public let entry: NetworkStatisticsEntry?


    public init(entry: NetworkStatisticsEntry?) {
        self.entry = entry
    }
}

