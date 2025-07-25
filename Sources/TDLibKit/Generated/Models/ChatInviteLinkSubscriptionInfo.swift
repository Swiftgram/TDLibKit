//
//  ChatInviteLinkSubscriptionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains information about subscription plan that must be paid by the user to use a chat invite link
public struct ChatInviteLinkSubscriptionInfo: Codable, Equatable, Hashable {

    /// True, if the user has already paid for the subscription and can use joinChatByInviteLink to join the subscribed chat again
    public let canReuse: Bool

    /// Identifier of the payment form to use for subscription payment; 0 if the subscription can't be paid
    public let formId: TdInt64

    /// Information about subscription plan that must be paid by the user to use the link
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

