//
//  GiveawayPrize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-42b1b825
//  https://github.com/tdlib/td/tree/42b1b825
//

import Foundation


/// Contains information about a giveaway prize
public indirect enum GiveawayPrize: Codable, Equatable, Hashable {

    /// The giveaway sends Telegram Premium subscriptions to the winners
    case giveawayPrizePremium(GiveawayPrizePremium)

    /// The giveaway sends Telegram Stars to the winners
    case giveawayPrizeStars(GiveawayPrizeStars)


    private enum Kind: String, Codable {
        case giveawayPrizePremium
        case giveawayPrizeStars
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giveawayPrizePremium:
            let value = try GiveawayPrizePremium(from: decoder)
            self = .giveawayPrizePremium(value)
        case .giveawayPrizeStars:
            let value = try GiveawayPrizeStars(from: decoder)
            self = .giveawayPrizeStars(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giveawayPrizePremium(let value):
            try container.encode(Kind.giveawayPrizePremium, forKey: .type)
            try value.encode(to: encoder)
        case .giveawayPrizeStars(let value):
            try container.encode(Kind.giveawayPrizeStars, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The giveaway sends Telegram Premium subscriptions to the winners
public struct GiveawayPrizePremium: Codable, Equatable, Hashable {

    /// Number of months the Telegram Premium subscription will be active after code activation
    public let monthCount: Int


    public init(monthCount: Int) {
        self.monthCount = monthCount
    }
}

/// The giveaway sends Telegram Stars to the winners
public struct GiveawayPrizeStars: Codable, Equatable, Hashable {

    /// Number of Telegram Stars that will be shared by all winners
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

