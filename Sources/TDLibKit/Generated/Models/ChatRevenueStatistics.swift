//
//  ChatRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// A detailed statistics about revenue earned from sponsored messages in a chat
public struct ChatRevenueStatistics: Codable, Equatable, Hashable {

    /// Amount of earned revenue
    public let revenueAmount: ChatRevenueAmount

    /// A graph containing amount of revenue in a given hour
    public let revenueByHourGraph: StatisticalGraph

    /// A graph containing amount of revenue
    public let revenueGraph: StatisticalGraph

    /// Current conversion rate of the cryptocurrency in which revenue is calculated to USD
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

