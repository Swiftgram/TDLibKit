//
//  GetStarWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Returns URL for Telegram star withdrawal
public struct GetStarWithdrawalUrl: Codable, Equatable, Hashable {

    /// Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_revenue_statistics == true
    public let ownerId: MessageSender?

    /// The 2-step verification password of the current user
    public let password: String?

    /// The number of Telegram stars to withdraw. Must be at least getOption("star_withdrawal_count_min")
    public let starCount: Int64?


    public init(
        ownerId: MessageSender?,
        password: String?,
        starCount: Int64?
    ) {
        self.ownerId = ownerId
        self.password = password
        self.starCount = starCount
    }
}

