//
//  PremiumGiveawayParticipantStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about status of a user in a Telegram Premium giveaway
public indirect enum PremiumGiveawayParticipantStatus: Codable, Equatable, Hashable {

    /// The user is eligible for the giveaway
    case premiumGiveawayParticipantStatusEligible

    /// The user participates in the giveaway
    case premiumGiveawayParticipantStatusParticipating

    /// The user can't participate in the giveaway, because they have already been member of the chat
    case premiumGiveawayParticipantStatusAlreadyWasMember(PremiumGiveawayParticipantStatusAlreadyWasMember)

    /// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway
    case premiumGiveawayParticipantStatusAdministrator(PremiumGiveawayParticipantStatusAdministrator)

    /// The user can't participate in the giveaway, because they phone number is from a disallowed country
    case premiumGiveawayParticipantStatusDisallowedCountry(PremiumGiveawayParticipantStatusDisallowedCountry)


    private enum Kind: String, Codable {
        case premiumGiveawayParticipantStatusEligible
        case premiumGiveawayParticipantStatusParticipating
        case premiumGiveawayParticipantStatusAlreadyWasMember
        case premiumGiveawayParticipantStatusAdministrator
        case premiumGiveawayParticipantStatusDisallowedCountry
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumGiveawayParticipantStatusEligible:
            self = .premiumGiveawayParticipantStatusEligible
        case .premiumGiveawayParticipantStatusParticipating:
            self = .premiumGiveawayParticipantStatusParticipating
        case .premiumGiveawayParticipantStatusAlreadyWasMember:
            let value = try PremiumGiveawayParticipantStatusAlreadyWasMember(from: decoder)
            self = .premiumGiveawayParticipantStatusAlreadyWasMember(value)
        case .premiumGiveawayParticipantStatusAdministrator:
            let value = try PremiumGiveawayParticipantStatusAdministrator(from: decoder)
            self = .premiumGiveawayParticipantStatusAdministrator(value)
        case .premiumGiveawayParticipantStatusDisallowedCountry:
            let value = try PremiumGiveawayParticipantStatusDisallowedCountry(from: decoder)
            self = .premiumGiveawayParticipantStatusDisallowedCountry(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumGiveawayParticipantStatusEligible:
            try container.encode(Kind.premiumGiveawayParticipantStatusEligible, forKey: .type)
        case .premiumGiveawayParticipantStatusParticipating:
            try container.encode(Kind.premiumGiveawayParticipantStatusParticipating, forKey: .type)
        case .premiumGiveawayParticipantStatusAlreadyWasMember(let value):
            try container.encode(Kind.premiumGiveawayParticipantStatusAlreadyWasMember, forKey: .type)
            try value.encode(to: encoder)
        case .premiumGiveawayParticipantStatusAdministrator(let value):
            try container.encode(Kind.premiumGiveawayParticipantStatusAdministrator, forKey: .type)
            try value.encode(to: encoder)
        case .premiumGiveawayParticipantStatusDisallowedCountry(let value):
            try container.encode(Kind.premiumGiveawayParticipantStatusDisallowedCountry, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user can't participate in the giveaway, because they have already been member of the chat
public struct PremiumGiveawayParticipantStatusAlreadyWasMember: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int


    public init(joinedChatDate: Int) {
        self.joinedChatDate = joinedChatDate
    }
}

/// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway
public struct PremiumGiveawayParticipantStatusAdministrator: Codable, Equatable, Hashable {

    /// Identifier of the chat administered by the user
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// The user can't participate in the giveaway, because they phone number is from a disallowed country
public struct PremiumGiveawayParticipantStatusDisallowedCountry: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
    public let userCountryCode: String


    public init(userCountryCode: String) {
        self.userCountryCode = userCountryCode
    }
}

