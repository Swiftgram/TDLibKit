//
//  ChatInviteLinkSubscriptionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains information about the subscription plan that must be paid for by the user to use a chat invite link
public struct ChatInviteLinkSubscriptionInfo: Codable, Equatable, Hashable {

    /// True, if the user has already paid for the subscription and can use joinChatByInviteLink to join the subscribed chat again
    public let canReuse: Bool

    /// Identifier of the payment form to use for subscription payment; 0 if the subscription can't be paid for
    public let formId: TdInt64

    /// Information about the subscription plan that must be paid for by the user to use the link
    public let pricing: StarSubscriptionPricing


    public init(
        canReuse: Bool,
        formId: TdInt64,
        pricing: StarSubscriptionPricing
    ) {
        self.canReuse = canReuse
        self.formId = formId
        self.pricing = pricing
    }
}

