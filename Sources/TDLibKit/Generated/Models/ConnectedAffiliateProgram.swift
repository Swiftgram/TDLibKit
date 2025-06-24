//
//  ConnectedAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Describes an affiliate program that was connected to an affiliate
public struct ConnectedAffiliateProgram: Codable, Equatable, Hashable {

    /// User identifier of the bot created the program
    public let botUserId: Int64

    /// Point in time (Unix timestamp) when the affiliate program was connected
    public let connectionDate: Int

    /// True, if the program was canceled by the bot, or disconnected by the chat owner and isn't available anymore
    public let isDisconnected: Bool

    /// The parameters of the affiliate program
    public let parameters: AffiliateProgramParameters

    /// The number of Telegram Stars that were earned by the affiliate program
    public let revenueStarCount: TdInt64

    /// The link that can be used to refer users if the program is still active
    public let url: String

    /// The number of users that used the affiliate program
    public let userCount: TdInt64


    public init(
        botUserId: Int64,
        connectionDate: Int,
        isDisconnected: Bool,
        parameters: AffiliateProgramParameters,
        revenueStarCount: TdInt64,
        url: String,
        userCount: TdInt64
    ) {
        self.botUserId = botUserId
        self.connectionDate = connectionDate
        self.isDisconnected = isDisconnected
        self.parameters = parameters
        self.revenueStarCount = revenueStarCount
        self.url = url
        self.userCount = userCount
    }
}

