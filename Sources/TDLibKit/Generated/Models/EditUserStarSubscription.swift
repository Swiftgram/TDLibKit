//
//  EditUserStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Cancels or re-enables Telegram Star subscription for a user; for bots only
public struct EditUserStarSubscription: Codable, Equatable, Hashable {

    /// Pass true to cancel the subscription; pass false to allow the user to enable it
    public let isCanceled: Bool?

    /// Telegram payment identifier of the subscription
    public let telegramPaymentChargeId: String?

    /// User identifier
    public let userId: Int64?


    public init(
        isCanceled: Bool?,
        telegramPaymentChargeId: String?,
        userId: Int64?
    ) {
        self.isCanceled = isCanceled
        self.telegramPaymentChargeId = telegramPaymentChargeId
        self.userId = userId
    }
}

