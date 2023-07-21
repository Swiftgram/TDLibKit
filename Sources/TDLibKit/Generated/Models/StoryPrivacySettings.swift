//
//  StoryPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-2e5319ff
//  https://github.com/tdlib/td/tree/2e5319ff
//

import Foundation


/// Describes privacy settings of a story
public enum StoryPrivacySettings: Codable, Equatable, Hashable {

    /// The story can be viewed by everyone
    case storyPrivacySettingsEveryone

    /// The story can be viewed by all contacts except chosen users
    case storyPrivacySettingsContacts(StoryPrivacySettingsContacts)

    /// The story can be viewed by all close friends
    case storyPrivacySettingsCloseFriends

    /// The story can be viewed by certain specified users
    case storyPrivacySettingsSelectedContacts(StoryPrivacySettingsSelectedContacts)


    private enum Kind: String, Codable {
        case storyPrivacySettingsEveryone
        case storyPrivacySettingsContacts
        case storyPrivacySettingsCloseFriends
        case storyPrivacySettingsSelectedContacts
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyPrivacySettingsEveryone:
            self = .storyPrivacySettingsEveryone
        case .storyPrivacySettingsContacts:
            let value = try StoryPrivacySettingsContacts(from: decoder)
            self = .storyPrivacySettingsContacts(value)
        case .storyPrivacySettingsCloseFriends:
            self = .storyPrivacySettingsCloseFriends
        case .storyPrivacySettingsSelectedContacts:
            let value = try StoryPrivacySettingsSelectedContacts(from: decoder)
            self = .storyPrivacySettingsSelectedContacts(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyPrivacySettingsEveryone:
            try container.encode(Kind.storyPrivacySettingsEveryone, forKey: .type)
        case .storyPrivacySettingsContacts(let value):
            try container.encode(Kind.storyPrivacySettingsContacts, forKey: .type)
            try value.encode(to: encoder)
        case .storyPrivacySettingsCloseFriends:
            try container.encode(Kind.storyPrivacySettingsCloseFriends, forKey: .type)
        case .storyPrivacySettingsSelectedContacts(let value):
            try container.encode(Kind.storyPrivacySettingsSelectedContacts, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The story can be viewed by all contacts except chosen users
public struct StoryPrivacySettingsContacts: Codable, Equatable, Hashable {

    /// User identifiers of the contacts that can't see the story; always empty for non-owned stories
    public let exceptUserIds: [Int64]


    public init(exceptUserIds: [Int64]) {
        self.exceptUserIds = exceptUserIds
    }
}

/// The story can be viewed by certain specified users
public struct StoryPrivacySettingsSelectedContacts: Codable, Equatable, Hashable {

    /// Identifiers of the users; always empty for non-owned stories
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

