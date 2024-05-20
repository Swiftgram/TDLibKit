//
//  StoryInteractionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of interaction with a story
public indirect enum StoryInteractionType: Codable, Equatable, Hashable {

    /// A view of the story
    case storyInteractionTypeView(StoryInteractionTypeView)

    /// A forward of the story as a message
    case storyInteractionTypeForward(StoryInteractionTypeForward)

    /// A repost of the story as a story
    case storyInteractionTypeRepost(StoryInteractionTypeRepost)


    private enum Kind: String, Codable {
        case storyInteractionTypeView
        case storyInteractionTypeForward
        case storyInteractionTypeRepost
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyInteractionTypeView:
            let value = try StoryInteractionTypeView(from: decoder)
            self = .storyInteractionTypeView(value)
        case .storyInteractionTypeForward:
            let value = try StoryInteractionTypeForward(from: decoder)
            self = .storyInteractionTypeForward(value)
        case .storyInteractionTypeRepost:
            let value = try StoryInteractionTypeRepost(from: decoder)
            self = .storyInteractionTypeRepost(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyInteractionTypeView(let value):
            try container.encode(Kind.storyInteractionTypeView, forKey: .type)
            try value.encode(to: encoder)
        case .storyInteractionTypeForward(let value):
            try container.encode(Kind.storyInteractionTypeForward, forKey: .type)
            try value.encode(to: encoder)
        case .storyInteractionTypeRepost(let value):
            try container.encode(Kind.storyInteractionTypeRepost, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A view of the story
public struct StoryInteractionTypeView: Codable, Equatable, Hashable {

    /// Type of the reaction that was chosen by the viewer; may be null if none
    public let chosenReactionType: ReactionType?


    public init(chosenReactionType: ReactionType?) {
        self.chosenReactionType = chosenReactionType
    }
}

/// A forward of the story as a message
public struct StoryInteractionTypeForward: Codable, Equatable, Hashable {

    /// The message with story forward
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A repost of the story as a story
public struct StoryInteractionTypeRepost: Codable, Equatable, Hashable {

    /// The reposted story
    public let story: Story


    public init(story: Story) {
        self.story = story
    }
}

