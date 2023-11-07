//
//  PremiumGiveawayParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Describes parameters of a Telegram Premium giveaway
public struct PremiumGiveawayParameters: Codable, Equatable, Hashable {

    /// Identifiers of other channel chats that must be subscribed by the users to be eligible for the giveaway. There can be up to getOption("giveaway_additional_chat_count_max") additional chats
    public let additionalChatIds: [Int64]

    /// Identifier of the channel chat, which will be automatically boosted by the winners of the giveaway for duration of the Premium subscription
    public let boostedChatId: Int64

    /// The list of two-letter ISO 3166-1 alpha-2 codes of countries, users from which will be eligible for the giveaway. If empty, then all users can participate in the giveaway.//-There can be up to getOption("giveaway_country_count_max") chosen countries. Users with phone number that was bought on Fragment can participate in any giveaway and the country code "FT" must not be specified in the list
    public let countryCodes: [String]

    /// True, if only new subscribers of the chats will be eligible for the giveaway
    public let onlyNewMembers: Bool

    /// Point in time (Unix timestamp) when the giveaway is expected to be performed; must be 60-getOption("giveaway_duration_max") seconds in the future in scheduled giveaways
    public let winnersSelectionDate: Int


    public init(
        additionalChatIds: [Int64],
        boostedChatId: Int64,
        countryCodes: [String],
        onlyNewMembers: Bool,
        winnersSelectionDate: Int
    ) {
        self.additionalChatIds = additionalChatIds
        self.boostedChatId = boostedChatId
        self.countryCodes = countryCodes
        self.onlyNewMembers = onlyNewMembers
        self.winnersSelectionDate = winnersSelectionDate
    }
}

