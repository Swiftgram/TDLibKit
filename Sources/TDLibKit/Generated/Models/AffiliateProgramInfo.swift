//
//  AffiliateProgramInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Contains information about an active affiliate program
public struct AffiliateProgramInfo: Codable, Equatable, Hashable {

    /// The amount of daily revenue per user in Telegram Stars of the bot that created the affiliate program
    public let dailyRevenuePerUserAmount: StarAmount

    /// Point in time (Unix timestamp) when the affiliate program will be closed; 0 if the affiliate program isn't scheduled to be closed. If positive, then the program can't be connected using connectAffiliateProgram, but active connections will work until the date
    public let endDate: Int

    /// Parameters of the affiliate program
    public let parameters: AffiliateProgramParameters


    public init(
        dailyRevenuePerUserAmount: StarAmount,
        endDate: Int,
        parameters: AffiliateProgramParameters
    ) {
        self.dailyRevenuePerUserAmount = dailyRevenuePerUserAmount
        self.endDate = endDate
        self.parameters = parameters
    }
}

