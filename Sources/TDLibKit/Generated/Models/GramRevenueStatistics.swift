//
//  GramRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// A detailed statistics about TON Grams earned by the current user
public struct GramRevenueStatistics: Codable, Equatable, Hashable {

    /// A graph containing amount of revenue in a given day
    public let revenueByDayGraph: StatisticalGraph

    /// Amount of earned revenue
    public let status: GramRevenueStatus

    /// Current conversion rate of nanogram to USD cents
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

