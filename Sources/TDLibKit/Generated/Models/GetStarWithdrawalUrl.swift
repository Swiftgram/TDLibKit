//
//  GetStarWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-8d08b34e
//  https://github.com/tdlib/td/tree/8d08b34e
//

import Foundation


/// Returns a URL for Telegram Star withdrawal
public struct GetStarWithdrawalUrl: Codable, Equatable, Hashable {

    /// Identifier of the owner of the Telegram Stars; can be identifier of an owned bot, or identifier of an owned channel chat
    public let ownerId: MessageSender?

    /// The 2-step verification password of the current user
    public let password: String?

    /// The number of Telegram Stars to withdraw. Must be at least getOption("star_withdrawal_count_min")
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

