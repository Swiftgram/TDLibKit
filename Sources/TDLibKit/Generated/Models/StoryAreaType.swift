//
//  StoryAreaType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes type of clickable area on a story media
public indirect enum StoryAreaType: Codable, Equatable, Hashable {

    /// An area pointing to a location
    case storyAreaTypeLocation(StoryAreaTypeLocation)

    /// An area pointing to a venue
    case storyAreaTypeVenue(StoryAreaTypeVenue)

    /// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked
    case storyAreaTypeSuggestedReaction(StoryAreaTypeSuggestedReaction)

    /// An area pointing to a message
    case storyAreaTypeMessage(StoryAreaTypeMessage)

    /// An area pointing to a HTTP or tg:// link
    case storyAreaTypeLink(StoryAreaTypeLink)

    /// An area with information about weather
    case storyAreaTypeWeather(StoryAreaTypeWeather)

    /// An area with an upgraded gift
    case storyAreaTypeUpgradedGift(StoryAreaTypeUpgradedGift)


    private enum Kind: String, Codable {
        case storyAreaTypeLocation
        case storyAreaTypeVenue
        case storyAreaTypeSuggestedReaction
        case storyAreaTypeMessage
        case storyAreaTypeLink
        case storyAreaTypeWeather
        case storyAreaTypeUpgradedGift
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyAreaTypeLocation:
            let value = try StoryAreaTypeLocation(from: decoder)
            self = .storyAreaTypeLocation(value)
        case .storyAreaTypeVenue:
            let value = try StoryAreaTypeVenue(from: decoder)
            self = .storyAreaTypeVenue(value)
        case .storyAreaTypeSuggestedReaction:
            let value = try StoryAreaTypeSuggestedReaction(from: decoder)
            self = .storyAreaTypeSuggestedReaction(value)
        case .storyAreaTypeMessage:
            let value = try StoryAreaTypeMessage(from: decoder)
            self = .storyAreaTypeMessage(value)
        case .storyAreaTypeLink:
            let value = try StoryAreaTypeLink(from: decoder)
            self = .storyAreaTypeLink(value)
        case .storyAreaTypeWeather:
            let value = try StoryAreaTypeWeather(from: decoder)
            self = .storyAreaTypeWeather(value)
        case .storyAreaTypeUpgradedGift:
            let value = try StoryAreaTypeUpgradedGift(from: decoder)
            self = .storyAreaTypeUpgradedGift(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyAreaTypeLocation(let value):
            try container.encode(Kind.storyAreaTypeLocation, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeVenue(let value):
            try container.encode(Kind.storyAreaTypeVenue, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeSuggestedReaction(let value):
            try container.encode(Kind.storyAreaTypeSuggestedReaction, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeMessage(let value):
            try container.encode(Kind.storyAreaTypeMessage, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeLink(let value):
            try container.encode(Kind.storyAreaTypeLink, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeWeather(let value):
            try container.encode(Kind.storyAreaTypeWeather, forKey: .type)
            try value.encode(to: encoder)
        case .storyAreaTypeUpgradedGift(let value):
            try container.encode(Kind.storyAreaTypeUpgradedGift, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An area pointing to a location
public struct StoryAreaTypeLocation: Codable, Equatable, Hashable {

    /// Address of the location; may be null if unknown
    public let address: LocationAddress?

    /// The location
    public let location: Location


    public init(
        address: LocationAddress?,
        location: Location
    ) {
        self.address = address
        self.location = location
    }
}

/// An area pointing to a venue
public struct StoryAreaTypeVenue: Codable, Equatable, Hashable {

    /// Information about the venue
    public let venue: Venue


    public init(venue: Venue) {
        self.venue = venue
    }
}

/// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked
public struct StoryAreaTypeSuggestedReaction: Codable, Equatable, Hashable {

    /// True, if reaction has a dark background
    public let isDark: Bool

    /// True, if reaction corner is flipped
    public let isFlipped: Bool

    /// Type of the reaction
    public let reactionType: ReactionType

    /// Number of times the reaction was added
    public let totalCount: Int


    public init(
        isDark: Bool,
        isFlipped: Bool,
        reactionType: ReactionType,
        totalCount: Int
    ) {
        self.isDark = isDark
        self.isFlipped = isFlipped
        self.reactionType = reactionType
        self.totalCount = totalCount
    }
}

/// An area pointing to a message
public struct StoryAreaTypeMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// An area pointing to a HTTP or tg:// link
public struct StoryAreaTypeLink: Codable, Equatable, Hashable {

    /// HTTP or tg:// URL to be opened when the area is clicked
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// An area with information about weather
public struct StoryAreaTypeWeather: Codable, Equatable, Hashable {

    /// A color of the area background in the ARGB format
    public let backgroundColor: Int

    /// Emoji representing the weather
    public let emoji: String

    /// Temperature, in degree Celsius
    public let temperature: Double


    public init(
        backgroundColor: Int,
        emoji: String,
        temperature: Double
    ) {
        self.backgroundColor = backgroundColor
        self.emoji = emoji
        self.temperature = temperature
    }
}

/// An area with an upgraded gift
public struct StoryAreaTypeUpgradedGift: Codable, Equatable, Hashable {

    /// Unique name of the upgraded gift
    public let giftName: String


    public init(giftName: String) {
        self.giftName = giftName
    }
}

