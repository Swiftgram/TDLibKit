//
//  GetPremiumGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Returns available options for creating of Telegram Premium giveaway or manual distribution of Telegram Premium among chat members
public struct GetPremiumGiveawayPaymentOptions: Codable, Equatable, Hashable {

    /// Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user
    public let boostedChatId: Int64?


    public init(boostedChatId: Int64?) {
        self.boostedChatId = boostedChatId
    }
}

