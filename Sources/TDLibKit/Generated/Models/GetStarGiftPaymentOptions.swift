//
//  GetStarGiftPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Returns available options for Telegram Stars gifting
public struct GetStarGiftPaymentOptions: Codable, Equatable, Hashable {

    /// Identifier of the user that will receive Telegram Stars; pass 0 to get options for an unspecified user
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

