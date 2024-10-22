//
//  GiveawayInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Contains information about a giveaway
public indirect enum GiveawayInfo: Codable, Equatable, Hashable {

    /// Describes an ongoing giveaway
    case giveawayInfoOngoing(GiveawayInfoOngoing)

    /// Describes a completed giveaway
    case giveawayInfoCompleted(GiveawayInfoCompleted)


    private enum Kind: String, Codable {
        case giveawayInfoOngoing
        case giveawayInfoCompleted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giveawayInfoOngoing:
            let value = try GiveawayInfoOngoing(from: decoder)
            self = .giveawayInfoOngoing(value)
        case .giveawayInfoCompleted:
            let value = try GiveawayInfoCompleted(from: decoder)
            self = .giveawayInfoCompleted(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giveawayInfoOngoing(let value):
            try container.encode(Kind.giveawayInfoOngoing, forKey: .type)
            try value.encode(to: encoder)
        case .giveawayInfoCompleted(let value):
            try container.encode(Kind.giveawayInfoCompleted, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes an ongoing giveaway
public struct GiveawayInfoOngoing: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the giveaway was created
    public let creationDate: Int

    /// True, if the giveaway has ended and results are being prepared
    public let isEnded: Bool

    /// Status of the current user in the giveaway
    public let status: GiveawayParticipantStatus


    public init(
        creationDate: Int,
        isEnded: Bool,
        status: GiveawayParticipantStatus
    ) {
        self.creationDate = creationDate
        self.isEnded = isEnded
        self.status = status
    }
}

/// Describes a completed giveaway
public struct GiveawayInfoCompleted: Codable, Equatable, Hashable {

    /// Number of winners, which activated their gift codes; for Telegram Premium giveaways only
    public let activationCount: Int

    /// Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
    public let actualWinnersSelectionDate: Int

    /// Point in time (Unix timestamp) when the giveaway was created
    public let creationDate: Int

    /// Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway or the giveaway isn't a Telegram Premium giveaway
    public let giftCode: String

    /// True, if the current user is a winner of the giveaway
    public let isWinner: Bool

    /// True, if the giveaway was canceled and was fully refunded
    public let wasRefunded: Bool

    /// Number of winners in the giveaway
    public let winnerCount: Int

    /// The amount of Telegram Stars won by the current user; 0 if the user isn't a winner in the giveaway or the giveaway isn't a Telegram Star giveaway
    public let wonStarCount: Int64


    public init(
        activationCount: Int,
        actualWinnersSelectionDate: Int,
        creationDate: Int,
        giftCode: String,
        isWinner: Bool,
        wasRefunded: Bool,
        winnerCount: Int,
        wonStarCount: Int64
    ) {
        self.activationCount = activationCount
        self.actualWinnersSelectionDate = actualWinnersSelectionDate
        self.creationDate = creationDate
        self.giftCode = giftCode
        self.isWinner = isWinner
        self.wasRefunded = wasRefunded
        self.winnerCount = winnerCount
        self.wonStarCount = wonStarCount
    }
}

