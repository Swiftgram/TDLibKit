//
//  MessageSchedulingState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-056963e4
//  https://github.com/tdlib/td/tree/056963e4
//

import Foundation


/// Contains information about the time when a scheduled message will be sent
public indirect enum MessageSchedulingState: Codable, Equatable, Hashable {

    /// The message will be sent at the specified date
    case messageSchedulingStateSendAtDate(MessageSchedulingStateSendAtDate)

    /// The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known
    case messageSchedulingStateSendWhenOnline

    /// The message will be sent when the video in the message is converted and optimized; can be used only by the server
    case messageSchedulingStateSendWhenVideoProcessed(MessageSchedulingStateSendWhenVideoProcessed)


    private enum Kind: String, Codable {
        case messageSchedulingStateSendAtDate
        case messageSchedulingStateSendWhenOnline
        case messageSchedulingStateSendWhenVideoProcessed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSchedulingStateSendAtDate:
            let value = try MessageSchedulingStateSendAtDate(from: decoder)
            self = .messageSchedulingStateSendAtDate(value)
        case .messageSchedulingStateSendWhenOnline:
            self = .messageSchedulingStateSendWhenOnline
        case .messageSchedulingStateSendWhenVideoProcessed:
            let value = try MessageSchedulingStateSendWhenVideoProcessed(from: decoder)
            self = .messageSchedulingStateSendWhenVideoProcessed(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSchedulingStateSendAtDate(let value):
            try container.encode(Kind.messageSchedulingStateSendAtDate, forKey: .type)
            try value.encode(to: encoder)
        case .messageSchedulingStateSendWhenOnline:
            try container.encode(Kind.messageSchedulingStateSendWhenOnline, forKey: .type)
        case .messageSchedulingStateSendWhenVideoProcessed(let value):
            try container.encode(Kind.messageSchedulingStateSendWhenVideoProcessed, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The message will be sent at the specified date
public struct MessageSchedulingStateSendAtDate: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future
    public let sendDate: Int


    public init(sendDate: Int) {
        self.sendDate = sendDate
    }
}

/// The message will be sent when the video in the message is converted and optimized; can be used only by the server
public struct MessageSchedulingStateSendWhenVideoProcessed: Codable, Equatable, Hashable {

    /// Approximate point in time (Unix timestamp) when the message is expected to be sent
    public let sendDate: Int


    public init(sendDate: Int) {
        self.sendDate = sendDate
    }
}

