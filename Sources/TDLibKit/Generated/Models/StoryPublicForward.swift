//
//  StoryPublicForward.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Describes a public forward or repost of a story
public enum StoryPublicForward: Codable, Equatable, Hashable {

    /// Contains a public forward of a story as a message
    case storyPublicForwardMessage(StoryPublicForwardMessage)

    /// Contains a public repost of a story as a story
    case storyPublicForwardStory(StoryPublicForwardStory)


    private enum Kind: String, Codable {
        case storyPublicForwardMessage
        case storyPublicForwardStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyPublicForwardMessage:
            let value = try StoryPublicForwardMessage(from: decoder)
            self = .storyPublicForwardMessage(value)
        case .storyPublicForwardStory:
            let value = try StoryPublicForwardStory(from: decoder)
            self = .storyPublicForwardStory(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyPublicForwardMessage(let value):
            try container.encode(Kind.storyPublicForwardMessage, forKey: .type)
            try value.encode(to: encoder)
        case .storyPublicForwardStory(let value):
            try container.encode(Kind.storyPublicForwardStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Contains a public forward of a story as a message
public struct StoryPublicForwardMessage: Codable, Equatable, Hashable {

    /// Information about the message with the story
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// Contains a public repost of a story as a story
public struct StoryPublicForwardStory: Codable, Equatable, Hashable {

    /// Information about the reposted story
    public let story: Story


    public init(story: Story) {
        self.story = story
    }
}

