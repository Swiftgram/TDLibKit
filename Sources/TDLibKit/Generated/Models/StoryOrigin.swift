//
//  StoryOrigin.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the origin of a story that was reposted
public indirect enum StoryOrigin: Codable, Equatable, Hashable {

    /// The original story was a public story with known sender
    case storyOriginPublicStory(StoryOriginPublicStory)

    /// The original story was sent by an unknown user
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

/// The original story was a public story with known sender
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

/// The original story was sent by an unknown user
public struct StoryOriginHiddenUser: Codable, Equatable, Hashable {

    /// Name of the story sender
    public let senderName: String


    public init(senderName: String) {
        self.senderName = senderName
    }
}

