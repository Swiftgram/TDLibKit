//
//  PremiumGiveawayInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about Telegram Premium giveaway
public indirect enum PremiumGiveawayInfo: Codable, Equatable, Hashable {

    /// Describes an ongoing giveaway
    case premiumGiveawayInfoOngoing(PremiumGiveawayInfoOngoing)

    /// Describes a completed giveaway
    case premiumGiveawayInfoCompleted(PremiumGiveawayInfoCompleted)


    private enum Kind: String, Codable {
        case premiumGiveawayInfoOngoing
        case premiumGiveawayInfoCompleted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumGiveawayInfoOngoing:
            let value = try PremiumGiveawayInfoOngoing(from: decoder)
            self = .premiumGiveawayInfoOngoing(value)
        case .premiumGiveawayInfoCompleted:
            let value = try PremiumGiveawayInfoCompleted(from: decoder)
            self = .premiumGiveawayInfoCompleted(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumGiveawayInfoOngoing(let value):
            try container.encode(Kind.premiumGiveawayInfoOngoing, forKey: .type)
            try value.encode(to: encoder)
        case .premiumGiveawayInfoCompleted(let value):
            try container.encode(Kind.premiumGiveawayInfoCompleted, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes an ongoing giveaway
public struct PremiumGiveawayInfoOngoing: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the giveaway was created
    public let creationDate: Int

    /// True, if the giveaway has ended and results are being prepared
    public let isEnded: Bool

    /// Status of the current user in the giveaway
    public let status: PremiumGiveawayParticipantStatus


    public init(
        creationDate: Int,
        isEnded: Bool,
        status: PremiumGiveawayParticipantStatus
    ) {
        self.creationDate = creationDate
        self.isEnded = isEnded
        self.status = status
    }
}

/// Describes a completed giveaway
public struct PremiumGiveawayInfoCompleted: Codable, Equatable, Hashable {

    /// Number of winners, which activated their gift codes
    public let activationCount: Int

    /// Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
    public let actualWinnersSelectionDate: Int

    /// Point in time (Unix timestamp) when the giveaway was created
    public let creationDate: Int

    /// Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway
    public let giftCode: String

    /// True, if the giveaway was canceled and was fully refunded
    public let wasRefunded: Bool

    /// Number of winners in the giveaway
    public let winnerCount: Int


    public init(
        activationCount: Int,
        actualWinnersSelectionDate: Int,
        creationDate: Int,
        giftCode: String,
        wasRefunded: Bool,
        winnerCount: Int
    ) {
        self.activationCount = activationCount
        self.actualWinnersSelectionDate = actualWinnersSelectionDate
        self.creationDate = creationDate
        self.giftCode = giftCode
        self.wasRefunded = wasRefunded
        self.winnerCount = winnerCount
    }
}

