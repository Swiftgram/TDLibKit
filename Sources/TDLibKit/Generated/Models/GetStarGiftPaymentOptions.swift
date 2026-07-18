//
//  GetStarGiftPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Returns available options for Telegram Stars gifting
public struct GetStarGiftPaymentOptions: Codable, Equatable, Hashable {

    /// Identifier of the user who will receive Telegram Stars; pass 0 to get options for an unspecified user
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

