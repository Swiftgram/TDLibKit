//
//  StoryAreaType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
//

import Foundation


/// Describes type of a clickable rectangle area on a story media
public enum StoryAreaType: Codable, Equatable, Hashable {

    /// An area pointing to a location
    case storyAreaTypeLocation(StoryAreaTypeLocation)

    /// An area pointing to a venue
    case storyAreaTypeVenue(StoryAreaTypeVenue)


    private enum Kind: String, Codable {
        case storyAreaTypeLocation
        case storyAreaTypeVenue
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
        }
    }
}

/// An area pointing to a location
public struct StoryAreaTypeLocation: Codable, Equatable, Hashable {

    /// The location
    public let location: Location


    public init(location: Location) {
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

