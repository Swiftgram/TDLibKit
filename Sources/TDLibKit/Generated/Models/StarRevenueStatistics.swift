//
//  StarRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

