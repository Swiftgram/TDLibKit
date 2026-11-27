//
//  GetStarRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns detailed Telegram Star revenue statistics
public struct GetStarRevenueStatistics: Codable, Equatable, Hashable {

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?

    /// Identifier of the owner of the Telegram Stars; can be an identifier of the current user, an owned bot, or a supergroup or a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
    public let ownerId: MessageSender?


    public init(
        isDark: Bool?,
        ownerId: MessageSender?
    ) {
        self.isDark = isDark
        self.ownerId = ownerId
    }
}

