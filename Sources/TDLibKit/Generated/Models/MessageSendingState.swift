//
//  MessageSendingState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the sending state of the message
public indirect enum MessageSendingState: Codable, Equatable, Hashable {

    /// The message is being sent now, but has not yet been delivered to the server
    case messageSendingStatePending(MessageSendingStatePending)

    /// The message failed to be sent
    case messageSendingStateFailed(MessageSendingStateFailed)


    private enum Kind: String, Codable {
        case messageSendingStatePending
        case messageSendingStateFailed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSendingStatePending:
            let value = try MessageSendingStatePending(from: decoder)
            self = .messageSendingStatePending(value)
        case .messageSendingStateFailed:
            let value = try MessageSendingStateFailed(from: decoder)
            self = .messageSendingStateFailed(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSendingStatePending(let value):
            try container.encode(Kind.messageSendingStatePending, forKey: .type)
            try value.encode(to: encoder)
        case .messageSendingStateFailed(let value):
            try container.encode(Kind.messageSendingStateFailed, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The message is being sent now, but has not yet been delivered to the server
public struct MessageSendingStatePending: Codable, Equatable, Hashable {

    /// Non-persistent message sending identifier, specified by the application
    public let sendingId: Int


    public init(sendingId: Int) {
        self.sendingId = sendingId
    }
}

/// The message failed to be sent
public struct MessageSendingStateFailed: Codable, Equatable, Hashable {

    /// True, if the message can be re-sent
    public let canRetry: Bool

    /// The cause of the message sending failure
    public let error: Error

    /// True, if the message can be re-sent only if another quote is chosen in the message that is replied by the given message
    public let needAnotherReplyQuote: Bool

    /// True, if the message can be re-sent only on behalf of a different sender
    public let needAnotherSender: Bool

    /// True, if the message can be re-sent only if the message to be replied is removed. This will be done automatically by resendMessages
    public let needDropReply: Bool

    /// Time left before the message can be re-sent, in seconds. No update is sent when this field changes
    public let retryAfter: Double


    public init(
        canRetry: Bool,
        error: Error,
        needAnotherReplyQuote: Bool,
        needAnotherSender: Bool,
        needDropReply: Bool,
        retryAfter: Double
    ) {
        self.canRetry = canRetry
        self.error = error
        self.needAnotherReplyQuote = needAnotherReplyQuote
        self.needAnotherSender = needAnotherSender
        self.needDropReply = needDropReply
        self.retryAfter = retryAfter
    }
}

