//
//  MessageSchedulingState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the time when a scheduled message will be sent
public indirect enum MessageSchedulingState: Codable, Equatable, Hashable {

    /// The message will be sent at the specified date
    case messageSchedulingStateSendAtDate(MessageSchedulingStateSendAtDate)

    /// The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known
    case messageSchedulingStateSendWhenOnline


    private enum Kind: String, Codable {
        case messageSchedulingStateSendAtDate
        case messageSchedulingStateSendWhenOnline
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

