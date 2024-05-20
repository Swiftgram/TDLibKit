//
//  ReactionUnavailabilityReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes why the current user can't add reactions to the message, despite some other users can
public indirect enum ReactionUnavailabilityReason: Codable, Equatable, Hashable {

    /// The user is an anonymous administrator in the supergroup, but isn't a creator of it, so they can't vote on behalf of the supergroup
    case reactionUnavailabilityReasonAnonymousAdministrator

    /// The user isn't a member of the supergroup and can't send messages and reactions there without joining
    case reactionUnavailabilityReasonGuest


    private enum Kind: String, Codable {
        case reactionUnavailabilityReasonAnonymousAdministrator
        case reactionUnavailabilityReasonGuest
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reactionUnavailabilityReasonAnonymousAdministrator:
            self = .reactionUnavailabilityReasonAnonymousAdministrator
        case .reactionUnavailabilityReasonGuest:
            self = .reactionUnavailabilityReasonGuest
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reactionUnavailabilityReasonAnonymousAdministrator:
            try container.encode(Kind.reactionUnavailabilityReasonAnonymousAdministrator, forKey: .type)
        case .reactionUnavailabilityReasonGuest:
            try container.encode(Kind.reactionUnavailabilityReasonGuest, forKey: .type)
        }
    }
}

