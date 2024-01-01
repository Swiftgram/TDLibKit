//
//  GetPremiumGiftCodePaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-d963044e
//  https://github.com/tdlib/td/tree/d963044e
//

import Foundation


/// Returns available options for Telegram Premium gift code or giveaway creation
public struct GetPremiumGiftCodePaymentOptions: Codable, Equatable, Hashable {

    /// Identifier of the channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user; 0 if none
    public let boostedChatId: Int64?


    public init(boostedChatId: Int64?) {
        self.boostedChatId = boostedChatId
    }
}

