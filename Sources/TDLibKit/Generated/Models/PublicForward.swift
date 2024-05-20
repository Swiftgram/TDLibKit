//
//  PublicForward.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a public forward or repost of a story
public indirect enum PublicForward: Codable, Equatable, Hashable {

    /// Contains a public forward as a message
    case publicForwardMessage(PublicForwardMessage)

    /// Contains a public repost to a story
    case publicForwardStory(PublicForwardStory)


    private enum Kind: String, Codable {
        case publicForwardMessage
        case publicForwardStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .publicForwardMessage:
            let value = try PublicForwardMessage(from: decoder)
            self = .publicForwardMessage(value)
        case .publicForwardStory:
            let value = try PublicForwardStory(from: decoder)
            self = .publicForwardStory(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .publicForwardMessage(let value):
            try container.encode(Kind.publicForwardMessage, forKey: .type)
            try value.encode(to: encoder)
        case .publicForwardStory(let value):
            try container.encode(Kind.publicForwardStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Contains a public forward as a message
public struct PublicForwardMessage: Codable, Equatable, Hashable {

    /// Information about the message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// Contains a public repost to a story
public struct PublicForwardStory: Codable, Equatable, Hashable {

    /// Information about the story
    public let story: Story


    public init(story: Story) {
        self.story = story
    }
}

