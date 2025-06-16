//
//  StarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Contains information about subscription to a channel chat, a bot, or a business account that was paid in Telegram Stars
public struct StarSubscription: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of the chat that is subscribed
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the subscription will expire or expired
    public let expirationDate: Int

    /// Unique identifier of the subscription
    public let id: String

    /// True, if the subscription was canceled
    public let isCanceled: Bool

    /// True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it
    public let isExpiring: Bool

    /// The subscription plan
    public let pricing: StarSubscriptionPricing

    /// Type of the subscription
    public let type: StarSubscriptionType


    public init(
        chatId: Int64,
        expirationDate: Int,
        id: String,
        isCanceled: Bool,
        isExpiring: Bool,
        pricing: StarSubscriptionPricing,
        type: StarSubscriptionType
    ) {
        self.chatId = chatId
        self.expirationDate = expirationDate
        self.id = id
        self.isCanceled = isCanceled
        self.isExpiring = isExpiring
        self.pricing = pricing
        self.type = type
    }
}

