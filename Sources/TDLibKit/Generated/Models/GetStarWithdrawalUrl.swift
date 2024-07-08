//
//  GetStarWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-cb164927
//  https://github.com/tdlib/td/tree/cb164927
//

import Foundation


/// Returns a URL for Telegram star withdrawal
public struct GetStarWithdrawalUrl: Codable, Equatable, Hashable {

    /// Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of an owned channel chat
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

