//
//  InputMessageReplyTo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Contains information about the message or the story to be replied
public indirect enum InputMessageReplyTo: Codable, Equatable, Hashable {

    /// Describes a message to be replied in the same chat and forum topic
    case inputMessageReplyToMessage(InputMessageReplyToMessage)

    /// Describes a message to be replied that is from a different chat or a forum topic; not supported in secret chats
    case inputMessageReplyToExternalMessage(InputMessageReplyToExternalMessage)

    /// Describes a story to be replied
    case inputMessageReplyToStory(InputMessageReplyToStory)


    private enum Kind: String, Codable {
        case inputMessageReplyToMessage
        case inputMessageReplyToExternalMessage
        case inputMessageReplyToStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputMessageReplyToMessage:
            let value = try InputMessageReplyToMessage(from: decoder)
            self = .inputMessageReplyToMessage(value)
        case .inputMessageReplyToExternalMessage:
            let value = try InputMessageReplyToExternalMessage(from: decoder)
            self = .inputMessageReplyToExternalMessage(value)
        case .inputMessageReplyToStory:
            let value = try InputMessageReplyToStory(from: decoder)
            self = .inputMessageReplyToStory(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputMessageReplyToMessage(let value):
            try container.encode(Kind.inputMessageReplyToMessage, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageReplyToExternalMessage(let value):
            try container.encode(Kind.inputMessageReplyToExternalMessage, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageReplyToStory(let value):
            try container.encode(Kind.inputMessageReplyToStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a message to be replied in the same chat and forum topic
public struct InputMessageReplyToMessage: Codable, Equatable, Hashable {

    /// The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied
    public let messageId: Int64

    /// Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats
    public let quote: InputTextQuote?


    public init(
        messageId: Int64,
        quote: InputTextQuote?
    ) {
        self.messageId = messageId
        self.quote = quote
    }
}

/// Describes a message to be replied that is from a different chat or a forum topic; not supported in secret chats
public struct InputMessageReplyToExternalMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat to which the message to be replied belongs
    public let chatId: Int64

    /// The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat
    public let messageId: Int64

    /// Quote from the message to be replied; pass null if none
    public let quote: InputTextQuote?


    public init(
        chatId: Int64,
        messageId: Int64,
        quote: InputTextQuote?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.quote = quote
    }
}

/// Describes a story to be replied
public struct InputMessageReplyToStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int

    /// The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat and channel stories can't be replied
    public let storySenderChatId: Int64


    public init(
        storyId: Int,
        storySenderChatId: Int64
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

