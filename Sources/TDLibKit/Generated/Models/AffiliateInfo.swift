//
//  AffiliateInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Contains information about an affiliate that received commission from a Telegram Star transaction
public struct AffiliateInfo: Codable, Equatable, Hashable {

    /// Identifier of the chat which received the commission
    public let affiliateChatId: Int64

    /// The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner
    public let commissionPerMille: Int

    /// The amount of Telegram Stars that were received by the affiliate; can be negative for refunds
    public let starAmount: StarAmount


    public init(
        affiliateChatId: Int64,
        commissionPerMille: Int,
        starAmount: StarAmount
    ) {
        self.affiliateChatId = affiliateChatId
        self.commissionPerMille = commissionPerMille
        self.starAmount = starAmount
    }
}

