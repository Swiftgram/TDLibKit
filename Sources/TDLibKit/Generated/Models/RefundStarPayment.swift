//
//  RefundStarPayment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Refunds a previously done payment in Telegram Stars; for bots only
public struct RefundStarPayment: Codable, Equatable, Hashable {

    /// Telegram payment identifier
    public let telegramPaymentChargeId: String?

    /// Identifier of the user that did the payment
    public let userId: Int64?


    public init(
        telegramPaymentChargeId: String?,
        userId: Int64?
    ) {
        self.telegramPaymentChargeId = telegramPaymentChargeId
        self.userId = userId
    }
}

