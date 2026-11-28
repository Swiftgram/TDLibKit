//
//  CreateChatSubscriptionInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Creates a new subscription invite link for a channel chat. Requires can_invite_users right in the chat
public struct CreateChatSubscriptionInviteLink: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link name; 0-32 characters
    public let name: String?

    /// Information about the subscription plan that will be applied to the users joining the chat via the link. The subscription period must be 2592000 in the production environment, and 60 or 300 if the Telegram test environment is used
    public let subscriptionPricing: StarSubscriptionPricing?


    public init(
        chatId: Int64?,
        name: String?,
        subscriptionPricing: StarSubscriptionPricing?
    ) {
        self.chatId = chatId
        self.name = name
        self.subscriptionPricing = subscriptionPricing
    }
}

