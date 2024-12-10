//
//  CreateChatSubscriptionInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Creates a new subscription invite link for a channel chat. Requires can_invite_users right in the chat
public struct CreateChatSubscriptionInviteLink: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link name; 0-32 characters
    public let name: String?

    /// Information about subscription plan that will be applied to the users joining the chat via the link. Subscription period must be 2592000 in production environment, and 60 or 300 if Telegram test environment is used
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

