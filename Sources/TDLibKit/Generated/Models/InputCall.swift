//
//  InputCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Describes a call
public indirect enum InputCall: Codable, Equatable, Hashable {

    /// A just ended call
    case inputCallDiscarded(InputCallDiscarded)

    /// A call from a message of the type messageCall with non-zero messageCall.unique_id
    case inputCallFromMessage(InputCallFromMessage)


    private enum Kind: String, Codable {
        case inputCallDiscarded
        case inputCallFromMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputCallDiscarded:
            let value = try InputCallDiscarded(from: decoder)
            self = .inputCallDiscarded(value)
        case .inputCallFromMessage:
            let value = try InputCallFromMessage(from: decoder)
            self = .inputCallFromMessage(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputCallDiscarded(let value):
            try container.encode(Kind.inputCallDiscarded, forKey: .type)
            try value.encode(to: encoder)
        case .inputCallFromMessage(let value):
            try container.encode(Kind.inputCallFromMessage, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A just ended call
public struct InputCallDiscarded: Codable, Equatable, Hashable {

    /// Identifier of the call
    public let callId: Int


    public init(callId: Int) {
        self.callId = callId
    }
}

/// A call from a message of the type messageCall with non-zero messageCall.unique_id
public struct InputCallFromMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the message
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

