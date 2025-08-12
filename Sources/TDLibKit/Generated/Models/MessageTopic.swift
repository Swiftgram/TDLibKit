//
//  MessageTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Describes a topic of messages in a chat
public indirect enum MessageTopic: Codable, Equatable, Hashable {

    /// A topic in a forum supergroup chat
    case messageTopicForum(MessageTopicForum)

    /// A topic in a channel direct messages chat administered by the current user
    case messageTopicDirectMessages(MessageTopicDirectMessages)

    /// A topic in Saved Messages chat
    case messageTopicSavedMessages(MessageTopicSavedMessages)


    private enum Kind: String, Codable {
        case messageTopicForum
        case messageTopicDirectMessages
        case messageTopicSavedMessages
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageTopicForum:
            let value = try MessageTopicForum(from: decoder)
            self = .messageTopicForum(value)
        case .messageTopicDirectMessages:
            let value = try MessageTopicDirectMessages(from: decoder)
            self = .messageTopicDirectMessages(value)
        case .messageTopicSavedMessages:
            let value = try MessageTopicSavedMessages(from: decoder)
            self = .messageTopicSavedMessages(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageTopicForum(let value):
            try container.encode(Kind.messageTopicForum, forKey: .type)
            try value.encode(to: encoder)
        case .messageTopicDirectMessages(let value):
            try container.encode(Kind.messageTopicDirectMessages, forKey: .type)
            try value.encode(to: encoder)
        case .messageTopicSavedMessages(let value):
            try container.encode(Kind.messageTopicSavedMessages, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A topic in a forum supergroup chat
public struct MessageTopicForum: Codable, Equatable, Hashable {

    /// Unique identifier of the forum topic; all messages in a non-forum supergroup chats belongs to the General topic
    public let forumTopicId: Int64


    public init(forumTopicId: Int64) {
        self.forumTopicId = forumTopicId
    }
}

/// A topic in a channel direct messages chat administered by the current user
public struct MessageTopicDirectMessages: Codable, Equatable, Hashable {

    /// Unique identifier of the topic
    public let directMessagesChatTopicId: Int64


    public init(directMessagesChatTopicId: Int64) {
        self.directMessagesChatTopicId = directMessagesChatTopicId
    }
}

/// A topic in Saved Messages chat
public struct MessageTopicSavedMessages: Codable, Equatable, Hashable {

    /// Unique identifier of the Saved Messages topic
    public let savedMessagesTopicId: Int64


    public init(savedMessagesTopicId: Int64) {
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

