//
//  StoryPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes privacy settings of a story
public indirect enum StoryPrivacySettings: Codable, Equatable, Hashable {

    /// The story can be viewed by everyone
    case storyPrivacySettingsEveryone(StoryPrivacySettingsEveryone)

    /// The story can be viewed by all contacts except chosen users
    case storyPrivacySettingsContacts(StoryPrivacySettingsContacts)

    /// The story can be viewed by all close friends
    case storyPrivacySettingsCloseFriends

    /// The story can be viewed by certain specified users
    case storyPrivacySettingsSelectedUsers(StoryPrivacySettingsSelectedUsers)


    private enum Kind: String, Codable {
        case storyPrivacySettingsEveryone
        case storyPrivacySettingsContacts
        case storyPrivacySettingsCloseFriends
        case storyPrivacySettingsSelectedUsers
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyPrivacySettingsEveryone:
            let value = try StoryPrivacySettingsEveryone(from: decoder)
            self = .storyPrivacySettingsEveryone(value)
        case .storyPrivacySettingsContacts:
            let value = try StoryPrivacySettingsContacts(from: decoder)
            self = .storyPrivacySettingsContacts(value)
        case .storyPrivacySettingsCloseFriends:
            self = .storyPrivacySettingsCloseFriends
        case .storyPrivacySettingsSelectedUsers:
            let value = try StoryPrivacySettingsSelectedUsers(from: decoder)
            self = .storyPrivacySettingsSelectedUsers(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyPrivacySettingsEveryone(let value):
            try container.encode(Kind.storyPrivacySettingsEveryone, forKey: .type)
            try value.encode(to: encoder)
        case .storyPrivacySettingsContacts(let value):
            try container.encode(Kind.storyPrivacySettingsContacts, forKey: .type)
            try value.encode(to: encoder)
        case .storyPrivacySettingsCloseFriends:
            try container.encode(Kind.storyPrivacySettingsCloseFriends, forKey: .type)
        case .storyPrivacySettingsSelectedUsers(let value):
            try container.encode(Kind.storyPrivacySettingsSelectedUsers, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The story can be viewed by everyone
public struct StoryPrivacySettingsEveryone: Codable, Equatable, Hashable {

    /// Identifiers of the users that can't see the story; always unknown and empty for non-owned stories
    public let exceptUserIds: [Int64]


    public init(exceptUserIds: [Int64]) {
        self.exceptUserIds = exceptUserIds
    }
}

/// The story can be viewed by all contacts except chosen users
public struct StoryPrivacySettingsContacts: Codable, Equatable, Hashable {

    /// User identifiers of the contacts that can't see the story; always unknown and empty for non-owned stories
    public let exceptUserIds: [Int64]


    public init(exceptUserIds: [Int64]) {
        self.exceptUserIds = exceptUserIds
    }
}

/// The story can be viewed by certain specified users
public struct StoryPrivacySettingsSelectedUsers: Codable, Equatable, Hashable {

    /// Identifiers of the users; always unknown and empty for non-owned stories
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

