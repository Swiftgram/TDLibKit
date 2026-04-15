//
//  TonRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// A detailed statistics about Toncoins earned by the current user
public struct TonRevenueStatistics: Codable, Equatable, Hashable {

    /// A graph containing amount of revenue in a given day
    public let revenueByDayGraph: StatisticalGraph

    /// Amount of earned revenue
    public let status: TonRevenueStatus

    /// Current conversion rate of nanotoncoin to USD cents
    public let usdRate: Double


    public init(
        revenueByDayGraph: StatisticalGraph,
        status: TonRevenueStatus,
        usdRate: Double
    ) {
        self.revenueByDayGraph = revenueByDayGraph
        self.status = status
        self.usdRate = usdRate
    }
}

