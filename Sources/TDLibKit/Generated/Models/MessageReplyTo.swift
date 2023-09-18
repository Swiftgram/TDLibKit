//
//  MessageReplyTo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-daf48013
//  https://github.com/tdlib/td/tree/daf48013
//

import Foundation


/// Contains information about the message or the story a message is replying to
public enum MessageReplyTo: Codable, Equatable, Hashable {

    /// Describes a replied message
    case messageReplyToMessage(MessageReplyToMessage)

    /// Describes a replied story
    case messageReplyToStory(MessageReplyToStory)


    private enum Kind: String, Codable {
        case messageReplyToMessage
        case messageReplyToStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageReplyToMessage:
            let value = try MessageReplyToMessage(from: decoder)
            self = .messageReplyToMessage(value)
        case .messageReplyToStory:
            let value = try MessageReplyToStory(from: decoder)
            self = .messageReplyToStory(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageReplyToMessage(let value):
            try container.encode(Kind.messageReplyToMessage, forKey: .type)
            try value.encode(to: encoder)
        case .messageReplyToStory(let value):
            try container.encode(Kind.messageReplyToStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a replied message
public struct MessageReplyToMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats
    public let chatId: Int64

    /// The identifier of the replied message
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// Describes a replied story
public struct MessageReplyToStory: Codable, Equatable, Hashable {

    /// The identifier of the replied story
    public let storyId: Int

    /// The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat
    public let storySenderChatId: Int64


    public init(
        storyId: Int,
        storySenderChatId: Int64
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

