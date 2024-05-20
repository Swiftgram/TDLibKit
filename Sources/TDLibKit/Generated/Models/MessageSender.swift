//
//  MessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the sender of a message
public indirect enum MessageSender: Codable, Equatable, Hashable {

    /// The message was sent by a known user
    case messageSenderUser(MessageSenderUser)

    /// The message was sent on behalf of a chat
    case messageSenderChat(MessageSenderChat)


    private enum Kind: String, Codable {
        case messageSenderUser
        case messageSenderChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSenderUser:
            let value = try MessageSenderUser(from: decoder)
            self = .messageSenderUser(value)
        case .messageSenderChat:
            let value = try MessageSenderChat(from: decoder)
            self = .messageSenderChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSenderUser(let value):
            try container.encode(Kind.messageSenderUser, forKey: .type)
            try value.encode(to: encoder)
        case .messageSenderChat(let value):
            try container.encode(Kind.messageSenderChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The message was sent by a known user
public struct MessageSenderUser: Codable, Equatable, Hashable {

    /// Identifier of the user that sent the message
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// The message was sent on behalf of a chat
public struct MessageSenderChat: Codable, Equatable, Hashable {

    /// Identifier of the chat that sent the message
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

