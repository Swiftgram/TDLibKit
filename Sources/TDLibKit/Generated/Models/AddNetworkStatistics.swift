//
//  AddNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
//

import Foundation


/// Adds the specified data to data usage statistics. Can be called before authorization
public struct AddNetworkStatistics: Codable, Equatable, Hashable {

    /// The network statistics entry with the data to be added to statistics
    public let entry: NetworkStatisticsEntry?


    public init(entry: NetworkStatisticsEntry?) {
        self.entry = entry
    }
}

