//
//  AffiliateType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
//

import Foundation


/// Describes type of affiliate for an affiliate program
public indirect enum AffiliateType: Codable, Equatable, Hashable {

    /// The affiliate is the current user
    case affiliateTypeCurrentUser

    /// The affiliate is a bot owned by the current user
    case affiliateTypeBot(AffiliateTypeBot)

    /// The affiliate is a channel chat where the current user has can_post_messages administrator right
    case affiliateTypeChannel(AffiliateTypeChannel)


    private enum Kind: String, Codable {
        case affiliateTypeCurrentUser
        case affiliateTypeBot
        case affiliateTypeChannel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .affiliateTypeCurrentUser:
            self = .affiliateTypeCurrentUser
        case .affiliateTypeBot:
            let value = try AffiliateTypeBot(from: decoder)
            self = .affiliateTypeBot(value)
        case .affiliateTypeChannel:
            let value = try AffiliateTypeChannel(from: decoder)
            self = .affiliateTypeChannel(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .affiliateTypeCurrentUser:
            try container.encode(Kind.affiliateTypeCurrentUser, forKey: .type)
        case .affiliateTypeBot(let value):
            try container.encode(Kind.affiliateTypeBot, forKey: .type)
            try value.encode(to: encoder)
        case .affiliateTypeChannel(let value):
            try container.encode(Kind.affiliateTypeChannel, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The affiliate is a bot owned by the current user
public struct AffiliateTypeBot: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// The affiliate is a channel chat where the current user has can_post_messages administrator right
public struct AffiliateTypeChannel: Codable, Equatable, Hashable {

    /// Identifier of the channel chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

