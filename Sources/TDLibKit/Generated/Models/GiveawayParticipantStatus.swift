//
//  GiveawayParticipantStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Contains information about status of a user in a giveaway
public indirect enum GiveawayParticipantStatus: Codable, Equatable, Hashable {

    /// The user is eligible for the giveaway
    case giveawayParticipantStatusEligible

    /// The user participates in the giveaway
    case giveawayParticipantStatusParticipating

    /// The user can't participate in the giveaway, because they have already been member of the chat
    case giveawayParticipantStatusAlreadyWasMember(GiveawayParticipantStatusAlreadyWasMember)

    /// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway
    case giveawayParticipantStatusAdministrator(GiveawayParticipantStatusAdministrator)

    /// The user can't participate in the giveaway, because they phone number is from a disallowed country
    case giveawayParticipantStatusDisallowedCountry(GiveawayParticipantStatusDisallowedCountry)


    private enum Kind: String, Codable {
        case giveawayParticipantStatusEligible
        case giveawayParticipantStatusParticipating
        case giveawayParticipantStatusAlreadyWasMember
        case giveawayParticipantStatusAdministrator
        case giveawayParticipantStatusDisallowedCountry
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giveawayParticipantStatusEligible:
            self = .giveawayParticipantStatusEligible
        case .giveawayParticipantStatusParticipating:
            self = .giveawayParticipantStatusParticipating
        case .giveawayParticipantStatusAlreadyWasMember:
            let value = try GiveawayParticipantStatusAlreadyWasMember(from: decoder)
            self = .giveawayParticipantStatusAlreadyWasMember(value)
        case .giveawayParticipantStatusAdministrator:
            let value = try GiveawayParticipantStatusAdministrator(from: decoder)
            self = .giveawayParticipantStatusAdministrator(value)
        case .giveawayParticipantStatusDisallowedCountry:
            let value = try GiveawayParticipantStatusDisallowedCountry(from: decoder)
            self = .giveawayParticipantStatusDisallowedCountry(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giveawayParticipantStatusEligible:
            try container.encode(Kind.giveawayParticipantStatusEligible, forKey: .type)
        case .giveawayParticipantStatusParticipating:
            try container.encode(Kind.giveawayParticipantStatusParticipating, forKey: .type)
        case .giveawayParticipantStatusAlreadyWasMember(let value):
            try container.encode(Kind.giveawayParticipantStatusAlreadyWasMember, forKey: .type)
            try value.encode(to: encoder)
        case .giveawayParticipantStatusAdministrator(let value):
            try container.encode(Kind.giveawayParticipantStatusAdministrator, forKey: .type)
            try value.encode(to: encoder)
        case .giveawayParticipantStatusDisallowedCountry(let value):
            try container.encode(Kind.giveawayParticipantStatusDisallowedCountry, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user can't participate in the giveaway, because they have already been member of the chat
public struct GiveawayParticipantStatusAlreadyWasMember: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int


    public init(joinedChatDate: Int) {
        self.joinedChatDate = joinedChatDate
    }
}

/// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway
public struct GiveawayParticipantStatusAdministrator: Codable, Equatable, Hashable {

    /// Identifier of the chat administered by the user
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// The user can't participate in the giveaway, because they phone number is from a disallowed country
public struct GiveawayParticipantStatusDisallowedCountry: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
    public let userCountryCode: String


    public init(userCountryCode: String) {
        self.userCountryCode = userCountryCode
    }
}

