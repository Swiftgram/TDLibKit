//
//  StarSubscriptionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Describes type of subscription paid in Telegram Stars
public indirect enum StarSubscriptionType: Codable, Equatable, Hashable {

    /// Describes a subscription to a channel chat
    case starSubscriptionTypeChannel(StarSubscriptionTypeChannel)

    /// Describes a subscription in a bot or a business account
    case starSubscriptionTypeBot(StarSubscriptionTypeBot)


    private enum Kind: String, Codable {
        case starSubscriptionTypeChannel
        case starSubscriptionTypeBot
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .starSubscriptionTypeChannel:
            let value = try StarSubscriptionTypeChannel(from: decoder)
            self = .starSubscriptionTypeChannel(value)
        case .starSubscriptionTypeBot:
            let value = try StarSubscriptionTypeBot(from: decoder)
            self = .starSubscriptionTypeBot(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .starSubscriptionTypeChannel(let value):
            try container.encode(Kind.starSubscriptionTypeChannel, forKey: .type)
            try value.encode(to: encoder)
        case .starSubscriptionTypeBot(let value):
            try container.encode(Kind.starSubscriptionTypeBot, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a subscription to a channel chat
public struct StarSubscriptionTypeChannel: Codable, Equatable, Hashable {

    /// True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again
    public let canReuse: Bool

    /// The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore
    public let inviteLink: String


    public init(
        canReuse: Bool,
        inviteLink: String
    ) {
        self.canReuse = canReuse
        self.inviteLink = inviteLink
    }
}

/// Describes a subscription in a bot or a business account
public struct StarSubscriptionTypeBot: Codable, Equatable, Hashable {

    /// The link to the subscription invoice
    public let invoiceLink: String

    /// True, if the subscription was canceled by the bot and can't be extended
    public let isCanceledByBot: Bool

    /// Subscription invoice photo
    public let photo: Photo

    /// Subscription invoice title
    public let title: String


    public init(
        invoiceLink: String,
        isCanceledByBot: Bool,
        photo: Photo,
        title: String
    ) {
        self.invoiceLink = invoiceLink
        self.isCanceledByBot = isCanceledByBot
        self.photo = photo
        self.title = title
    }
}

