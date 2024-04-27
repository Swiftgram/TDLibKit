//
//  ChatRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// A detailed statistics about revenue earned from sponsored messages in a chat
public struct ChatRevenueStatistics: Codable, Equatable, Hashable {

    /// Cryptocurrency in which revenue is calculated
    public let cryptocurrency: String

    /// Amount of the cryptocurrency available for withdrawal, in the smallest units of the cryptocurrency
    public let cryptocurrencyAvailableAmount: TdInt64

    /// Amount of the cryptocurrency that isn't withdrawn yet, in the smallest units of the cryptocurrency
    public let cryptocurrencyBalanceAmount: TdInt64

    /// Total amount of the cryptocurrency earned, in the smallest units of the cryptocurrency
    public let cryptocurrencyTotalAmount: TdInt64

    /// A graph containing amount of revenue in a given hour
    public let revenueByHourGraph: StatisticalGraph

    /// A graph containing amount of revenue
    public let revenueGraph: StatisticalGraph

    /// Current conversion rate of the cryptocurrency to USD
    public let usdRate: Double


    public init(
        cryptocurrency: String,
        cryptocurrencyAvailableAmount: TdInt64,
        cryptocurrencyBalanceAmount: TdInt64,
        cryptocurrencyTotalAmount: TdInt64,
        revenueByHourGraph: StatisticalGraph,
        revenueGraph: StatisticalGraph,
        usdRate: Double
    ) {
        self.cryptocurrency = cryptocurrency
        self.cryptocurrencyAvailableAmount = cryptocurrencyAvailableAmount
        self.cryptocurrencyBalanceAmount = cryptocurrencyBalanceAmount
        self.cryptocurrencyTotalAmount = cryptocurrencyTotalAmount
        self.revenueByHourGraph = revenueByHourGraph
        self.revenueGraph = revenueGraph
        self.usdRate = usdRate
    }
}

