//
//  MessageReplyTo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the message or the story a message is replying to
public indirect enum MessageReplyTo: Codable, Equatable, Hashable {

    /// Describes a message replied by a given message
    case messageReplyToMessage(MessageReplyToMessage)

    /// Describes a story replied by a given message
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

/// Describes a message replied by a given message
public struct MessageReplyToMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat to which the message belongs; may be 0 if the replied message is in unknown chat
    public let chatId: Int64

    /// Media content of the message if the message was from another chat or topic; may be null for messages from the same chat and messages without media. Can be only one of the following types: messageAnimation, messageAudio, messageContact, messageDice, messageDocument, messageGame, messageInvoice, messageLocation, messagePhoto, messagePoll, messagePremiumGiveaway, messagePremiumGiveawayWinners, messageSticker, messageStory, messageText (for link preview), messageVenue, messageVideo, messageVideoNote, or messageVoiceNote
    public let content: MessageContent?

    /// The identifier of the message; may be 0 if the replied message is in unknown chat
    public let messageId: Int64

    /// Information about origin of the message if the message was from another chat or topic; may be null for messages from the same chat
    public let origin: MessageOrigin?

    /// Point in time (Unix timestamp) when the message was sent if the message was from another chat or topic; 0 for messages from the same chat
    public let originSendDate: Int

    /// Chosen quote from the replied message; may be null if none
    public let quote: TextQuote?


    public init(
        chatId: Int64,
        content: MessageContent?,
        messageId: Int64,
        origin: MessageOrigin?,
        originSendDate: Int,
        quote: TextQuote?
    ) {
        self.chatId = chatId
        self.content = content
        self.messageId = messageId
        self.origin = origin
        self.originSendDate = originSendDate
        self.quote = quote
    }
}

/// Describes a story replied by a given message
public struct MessageReplyToStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int

    /// The identifier of the sender of the story
    public let storySenderChatId: Int64


    public init(
        storyId: Int,
        storySenderChatId: Int64
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

