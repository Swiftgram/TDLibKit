//
//  TonRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
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

