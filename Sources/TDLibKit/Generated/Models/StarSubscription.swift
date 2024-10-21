//
//  StarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Contains information about subscription to a channel chat paid in Telegram Stars
public struct StarSubscription: Codable, Equatable, Hashable, Identifiable {

    /// True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again
    public let canReuse: Bool

    /// Identifier of the channel chat that is subscribed
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the subscription will expire or expired
    public let expirationDate: Int

    /// Unique identifier of the subscription
    public let id: String

    /// The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore
    public let inviteLink: String

    /// True, if the subscription was canceled
    public let isCanceled: Bool

    /// True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it
    public let isExpiring: Bool

    /// The subscription plan
    public let pricing: StarSubscriptionPricing


    public init(
        canReuse: Bool,
        chatId: Int64,
        expirationDate: Int,
        id: String,
        inviteLink: String,
        isCanceled: Bool,
        isExpiring: Bool,
        pricing: StarSubscriptionPricing
    ) {
        self.canReuse = canReuse
        self.chatId = chatId
        self.expirationDate = expirationDate
        self.id = id
        self.inviteLink = inviteLink
        self.isCanceled = isCanceled
        self.isExpiring = isExpiring
        self.pricing = pricing
    }
}

