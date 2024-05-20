//
//  InputMessageReplyTo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the message or the story to be replied
public indirect enum InputMessageReplyTo: Codable, Equatable, Hashable {

    /// Describes a message to be replied
    case inputMessageReplyToMessage(InputMessageReplyToMessage)

    /// Describes a story to be replied
    case inputMessageReplyToStory(InputMessageReplyToStory)


    private enum Kind: String, Codable {
        case inputMessageReplyToMessage
        case inputMessageReplyToStory
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputMessageReplyToMessage:
            let value = try InputMessageReplyToMessage(from: decoder)
            self = .inputMessageReplyToMessage(value)
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
        case .inputMessageReplyToStory(let value):
            try container.encode(Kind.inputMessageReplyToStory, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes a message to be replied
public struct InputMessageReplyToMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat to which the message to be replied belongs; pass 0 if the message to be replied is in the same chat. Must always be 0 for replies in secret chats. A message can be replied in another chat or topic only if message.can_be_replied_in_another_chat
    public let chatId: Int64

    /// The identifier of the message to be replied in the same or the specified chat
    public let messageId: Int64

    /// Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats
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

