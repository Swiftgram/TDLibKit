//
//  StoryOrigin.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Contains information about the origin of a story that was reposted
public indirect enum StoryOrigin: Codable, Equatable, Hashable {

    /// The original story was a public story that was posted by a known chat
    case storyOriginPublicStory(StoryOriginPublicStory)

    /// The original story was posted by an unknown user
    case storyOriginHiddenUser(StoryOriginHiddenUser)


    private enum Kind: String, Codable {
        case storyOriginPublicStory
        case storyOriginHiddenUser
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyOriginPublicStory:
            let value = try StoryOriginPublicStory(from: decoder)
            self = .storyOriginPublicStory(value)
        case .storyOriginHiddenUser:
            let value = try StoryOriginHiddenUser(from: decoder)
            self = .storyOriginHiddenUser(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyOriginPublicStory(let value):
            try container.encode(Kind.storyOriginPublicStory, forKey: .type)
            try value.encode(to: encoder)
        case .storyOriginHiddenUser(let value):
            try container.encode(Kind.storyOriginHiddenUser, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The original story was a public story that was posted by a known chat
public struct StoryOriginPublicStory: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted original story
    public let chatId: Int64

    /// Story identifier of the original story
    public let storyId: Int


    public init(
        chatId: Int64,
        storyId: Int
    ) {
        self.chatId = chatId
        self.storyId = storyId
    }
}

/// The original story was posted by an unknown user
public struct StoryOriginHiddenUser: Codable, Equatable, Hashable {

    /// Name of the user or the chat that posted the story
    public let posterName: String


    public init(posterName: String) {
        self.posterName = posterName
    }
}

