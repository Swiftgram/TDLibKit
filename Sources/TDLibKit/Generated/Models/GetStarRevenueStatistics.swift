//
//  GetStarRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Returns detailed Telegram Star revenue statistics
public struct GetStarRevenueStatistics: Codable, Equatable, Hashable {

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?

    /// Identifier of the owner of the Telegram Stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
    public let ownerId: MessageSender?


    public init(
        isDark: Bool?,
        ownerId: MessageSender?
    ) {
        self.isDark = isDark
        self.ownerId = ownerId
    }
}

