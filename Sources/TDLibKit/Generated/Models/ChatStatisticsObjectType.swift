//
//  ChatStatisticsObjectType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of object, for which statistics are provided
public indirect enum ChatStatisticsObjectType: Codable, Equatable, Hashable {

    /// Describes a message sent in the chat
    case chatStatisticsObjectTypeMessage(ChatStatisticsObjectTypeMessage)

    /// Describes a story sent by the chat
    case chatStatisticsObjectTypeStory(ChatStatisticsObjectTypeStory)


    private enum Kind: String, Codable {
        case chatStatisticsObjectTypeMessage
        case chatStatisticsObjectTypeStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatStatisticsObjectTypeMessage:
            let value = try ChatStatisticsObjectTypeMessage(from: decoder)
            self = .chatStatisticsObjectTypeMessage(value)
        case .chatStatisticsObjectTypeStory:
            let value = try ChatStatisticsObjectTypeStory(from: decoder)
            self = .chatStatisticsObjectTypeStory(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatStatisticsObjectTypeMessage(let value):
            try container.encode(Kind.chatStatisticsObjectTypeMessage, forKey: .type)
            try value.encode(to: encoder)
        case .chatStatisticsObjectTypeStory(let value):
            try container.encode(Kind.chatStatisticsObjectTypeStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a message sent in the chat
public struct ChatStatisticsObjectTypeMessage: Codable, Equatable, Hashable {

    /// Message identifier
    public let messageId: Int64


    public init(messageId: Int64) {
        self.messageId = messageId
    }
}

/// Describes a story sent by the chat
public struct ChatStatisticsObjectTypeStory: Codable, Equatable, Hashable {

    /// Story identifier
    public let storyId: Int


    public init(storyId: Int) {
        self.storyId = storyId
    }
}

