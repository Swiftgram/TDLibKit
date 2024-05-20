//
//  InputStoryAreaType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of clickable rectangle area on a story media to be added
public indirect enum InputStoryAreaType: Codable, Equatable, Hashable {

    /// An area pointing to a location
    case inputStoryAreaTypeLocation(InputStoryAreaTypeLocation)

    /// An area pointing to a venue found by the bot getOption("venue_search_bot_username")
    case inputStoryAreaTypeFoundVenue(InputStoryAreaTypeFoundVenue)

    /// An area pointing to a venue already added to the story
    case inputStoryAreaTypePreviousVenue(InputStoryAreaTypePreviousVenue)

    /// An area pointing to a suggested reaction
    case inputStoryAreaTypeSuggestedReaction(InputStoryAreaTypeSuggestedReaction)

    /// An area pointing to a message
    case inputStoryAreaTypeMessage(InputStoryAreaTypeMessage)


    private enum Kind: String, Codable {
        case inputStoryAreaTypeLocation
        case inputStoryAreaTypeFoundVenue
        case inputStoryAreaTypePreviousVenue
        case inputStoryAreaTypeSuggestedReaction
        case inputStoryAreaTypeMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputStoryAreaTypeLocation:
            let value = try InputStoryAreaTypeLocation(from: decoder)
            self = .inputStoryAreaTypeLocation(value)
        case .inputStoryAreaTypeFoundVenue:
            let value = try InputStoryAreaTypeFoundVenue(from: decoder)
            self = .inputStoryAreaTypeFoundVenue(value)
        case .inputStoryAreaTypePreviousVenue:
            let value = try InputStoryAreaTypePreviousVenue(from: decoder)
            self = .inputStoryAreaTypePreviousVenue(value)
        case .inputStoryAreaTypeSuggestedReaction:
            let value = try InputStoryAreaTypeSuggestedReaction(from: decoder)
            self = .inputStoryAreaTypeSuggestedReaction(value)
        case .inputStoryAreaTypeMessage:
            let value = try InputStoryAreaTypeMessage(from: decoder)
            self = .inputStoryAreaTypeMessage(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputStoryAreaTypeLocation(let value):
            try container.encode(Kind.inputStoryAreaTypeLocation, forKey: .type)
            try value.encode(to: encoder)
        case .inputStoryAreaTypeFoundVenue(let value):
            try container.encode(Kind.inputStoryAreaTypeFoundVenue, forKey: .type)
            try value.encode(to: encoder)
        case .inputStoryAreaTypePreviousVenue(let value):
            try container.encode(Kind.inputStoryAreaTypePreviousVenue, forKey: .type)
            try value.encode(to: encoder)
        case .inputStoryAreaTypeSuggestedReaction(let value):
            try container.encode(Kind.inputStoryAreaTypeSuggestedReaction, forKey: .type)
            try value.encode(to: encoder)
        case .inputStoryAreaTypeMessage(let value):
            try container.encode(Kind.inputStoryAreaTypeMessage, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An area pointing to a location
public struct InputStoryAreaTypeLocation: Codable, Equatable, Hashable {

    /// The location
    public let location: Location


    public init(location: Location) {
        self.location = location
    }
}

/// An area pointing to a venue found by the bot getOption("venue_search_bot_username")
public struct InputStoryAreaTypeFoundVenue: Codable, Equatable, Hashable {

    /// Identifier of the inline query, used to found the venue
    public let queryId: TdInt64

    /// Identifier of the inline query result
    public let resultId: String


    public init(
        queryId: TdInt64,
        resultId: String
    ) {
        self.queryId = queryId
        self.resultId = resultId
    }
}

/// An area pointing to a venue already added to the story
public struct InputStoryAreaTypePreviousVenue: Codable, Equatable, Hashable {

    /// Identifier of the venue in the provider database
    public let venueId: String

    /// Provider of the venue
    public let venueProvider: String


    public init(
        venueId: String,
        venueProvider: String
    ) {
        self.venueId = venueId
        self.venueProvider = venueProvider
    }
}

/// An area pointing to a suggested reaction
public struct InputStoryAreaTypeSuggestedReaction: Codable, Equatable, Hashable {

    /// True, if reaction has a dark background
    public let isDark: Bool

    /// True, if reaction corner is flipped
    public let isFlipped: Bool

    /// Type of the reaction
    public let reactionType: ReactionType


    public init(
        isDark: Bool,
        isFlipped: Bool,
        reactionType: ReactionType
    ) {
        self.isDark = isDark
        self.isFlipped = isFlipped
        self.reactionType = reactionType
    }
}

/// An area pointing to a message
public struct InputStoryAreaTypeMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message. Currently, the chat must be a supergroup or a channel chat
    public let chatId: Int64

    /// Identifier of the message. Only successfully sent non-scheduled messages can be specified
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

