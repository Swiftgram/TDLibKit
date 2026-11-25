//
//  ChatRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Detailed statistics about revenue earned from sponsored messages in a chat
public struct ChatRevenueStatistics: Codable, Equatable, Hashable {

    /// Amount of earned revenue
    public let revenueAmount: ChatRevenueAmount

    /// A graph containing the amount of revenue in a given hour
    public let revenueByHourGraph: StatisticalGraph

    /// A graph containing the amount of revenue
    public let revenueGraph: StatisticalGraph

    /// Current exchange rate of the cryptocurrency in which revenue is calculated to USD
    public let usdRate: Double


    public init(
        revenueAmount: ChatRevenueAmount,
        revenueByHourGraph: StatisticalGraph,
        revenueGraph: StatisticalGraph,
        usdRate: Double
    ) {
        self.revenueAmount = revenueAmount
        self.revenueByHourGraph = revenueByHourGraph
        self.revenueGraph = revenueGraph
        self.usdRate = usdRate
    }
}

