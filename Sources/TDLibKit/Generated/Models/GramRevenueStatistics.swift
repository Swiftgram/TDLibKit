//
//  GramRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Detailed statistics about TON Grams earned by the current user
public struct GramRevenueStatistics: Codable, Equatable, Hashable {

    /// A graph containing the amount of revenue on a given day
    public let revenueByDayGraph: StatisticalGraph

    /// Amount of earned revenue
    public let status: GramRevenueStatus

    /// Current exchange rate of a nanogram to USD cents
    public let usdRate: Double


    public init(
        revenueByDayGraph: StatisticalGraph,
        status: GramRevenueStatus,
        usdRate: Double
    ) {
        self.revenueByDayGraph = revenueByDayGraph
        self.status = status
        self.usdRate = usdRate
    }
}

