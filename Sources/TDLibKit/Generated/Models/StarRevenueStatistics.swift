//
//  StarRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// A detailed statistics about Telegram stars earned by a bot or a chat
public struct StarRevenueStatistics: Codable, Equatable, Hashable {

    /// A graph containing amount of revenue in a given day
    public let revenueByDayGraph: StatisticalGraph

    /// Telegram star revenue status
    public let status: StarRevenueStatus

    /// Current conversion rate of a Telegram star to USD
    public let usdRate: Double


    public init(
        revenueByDayGraph: StatisticalGraph,
        status: StarRevenueStatus,
        usdRate: Double
    ) {
        self.revenueByDayGraph = revenueByDayGraph
        self.status = status
        self.usdRate = usdRate
    }
}

