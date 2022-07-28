//
//  MessageForwardOrigin.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about the origin of a forwarded message
public enum MessageForwardOrigin: Codable, Equatable {

    /// The message was originally sent by a known user
    case messageForwardOriginUser(MessageForwardOriginUser)

    /// The message was originally sent on behalf of a chat
    case messageForwardOriginChat(MessageForwardOriginChat)

    /// The message was originally sent by a user, which is hidden by their privacy settings
    case messageForwardOriginHiddenUser(MessageForwardOriginHiddenUser)

    /// The message was originally a post in a channel
    case messageForwardOriginChannel(MessageForwardOriginChannel)

    /// The message was imported from an exported message history
    case messageForwardOriginMessageImport(MessageForwardOriginMessageImport)


    private enum Kind: String, Codable {
        case messageForwardOriginUser
        case messageForwardOriginChat
        case messageForwardOriginHiddenUser
        case messageForwardOriginChannel
        case messageForwardOriginMessageImport
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageForwardOriginUser:
            let value = try MessageForwardOriginUser(from: decoder)
            self = .messageForwardOriginUser(value)
        case .messageForwardOriginChat:
            let value = try MessageForwardOriginChat(from: decoder)
            self = .messageForwardOriginChat(value)
        case .messageForwardOriginHiddenUser:
            let value = try MessageForwardOriginHiddenUser(from: decoder)
            self = .messageForwardOriginHiddenUser(value)
        case .messageForwardOriginChannel:
            let value = try MessageForwardOriginChannel(from: decoder)
            self = .messageForwardOriginChannel(value)
        case .messageForwardOriginMessageImport:
            let value = try MessageForwardOriginMessageImport(from: decoder)
            self = .messageForwardOriginMessageImport(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageForwardOriginUser(let value):
            try container.encode(Kind.messageForwardOriginUser, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginChat(let value):
            try container.encode(Kind.messageForwardOriginChat, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginHiddenUser(let value):
            try container.encode(Kind.messageForwardOriginHiddenUser, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginChannel(let value):
            try container.encode(Kind.messageForwardOriginChannel, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginMessageImport(let value):
            try container.encode(Kind.messageForwardOriginMessageImport, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The message was originally sent by a known user
public struct MessageForwardOriginUser: Codable, Equatable {

    /// Identifier of the user that originally sent the message
    public let senderUserId: Int64


    public init(senderUserId: Int64) {
        self.senderUserId = senderUserId
    }
}

/// The message was originally sent on behalf of a chat
public struct MessageForwardOriginChat: Codable, Equatable {

    /// For messages originally sent by an anonymous chat administrator, original message author signature
    public let authorSignature: String

    /// Identifier of the chat that originally sent the message
    public let senderChatId: Int64


    public init(
        authorSignature: String,
        senderChatId: Int64
    ) {
        self.authorSignature = authorSignature
        self.senderChatId = senderChatId
    }
}

/// The message was originally sent by a user, which is hidden by their privacy settings
public struct MessageForwardOriginHiddenUser: Codable, Equatable {

    /// Name of the sender
    public let senderName: String


    public init(senderName: String) {
        self.senderName = senderName
    }
}

/// The message was originally a post in a channel
public struct MessageForwardOriginChannel: Codable, Equatable {

    /// Original post author signature
    public let authorSignature: String

    /// Identifier of the chat from which the message was originally forwarded
    public let chatId: Int64

    /// Message identifier of the original message
    public let messageId: Int64


    public init(
        authorSignature: String,
        chatId: Int64,
        messageId: Int64
    ) {
        self.authorSignature = authorSignature
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// The message was imported from an exported message history
public struct MessageForwardOriginMessageImport: Codable, Equatable {

    /// Name of the sender
    public let senderName: String


    public init(senderName: String) {
        self.senderName = senderName
    }
}

