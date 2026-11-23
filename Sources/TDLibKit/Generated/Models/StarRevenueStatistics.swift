//
//  StarRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Detailed statistics about Telegram Stars earned by a user or a chat
public struct StarRevenueStatistics: Codable, Equatable, Hashable {

    /// A graph containing the amount of revenue on a given day
    public let revenueByDayGraph: StatisticalGraph

    /// Telegram Star revenue status
    public let status: StarRevenueStatus

    /// Current exchange rate of a Telegram Star to USD
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

