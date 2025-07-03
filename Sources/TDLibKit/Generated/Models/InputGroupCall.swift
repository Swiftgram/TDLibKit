//
//  InputGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-bb474a20
//  https://github.com/tdlib/td/tree/bb474a20
//

import Foundation


/// Describes a non-joined group call that isn't bound to a chat
public indirect enum InputGroupCall: Codable, Equatable, Hashable {

    /// The group call is accessible through a link
    case inputGroupCallLink(InputGroupCallLink)

    /// The group call is accessible through a message of the type messageGroupCall
    case inputGroupCallMessage(InputGroupCallMessage)


    private enum Kind: String, Codable {
        case inputGroupCallLink
        case inputGroupCallMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputGroupCallLink:
            let value = try InputGroupCallLink(from: decoder)
            self = .inputGroupCallLink(value)
        case .inputGroupCallMessage:
            let value = try InputGroupCallMessage(from: decoder)
            self = .inputGroupCallMessage(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputGroupCallLink(let value):
            try container.encode(Kind.inputGroupCallLink, forKey: .type)
            try value.encode(to: encoder)
        case .inputGroupCallMessage(let value):
            try container.encode(Kind.inputGroupCallMessage, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The group call is accessible through a link
public struct InputGroupCallLink: Codable, Equatable, Hashable {

    /// The link for the group call
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The group call is accessible through a message of the type messageGroupCall
public struct InputGroupCallMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64

    /// Identifier of the message of the type messageGroupCall
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

