//
//  MessageSelfDestructType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes when a message will be self-destructed
public indirect enum MessageSelfDestructType: Codable, Equatable, Hashable {

    /// The message will be self-destructed in the specified time after its content was opened
    case messageSelfDestructTypeTimer(MessageSelfDestructTypeTimer)

    /// The message can be opened only once and will be self-destructed once closed
    case messageSelfDestructTypeImmediately


    private enum Kind: String, Codable {
        case messageSelfDestructTypeTimer
        case messageSelfDestructTypeImmediately
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSelfDestructTypeTimer:
            let value = try MessageSelfDestructTypeTimer(from: decoder)
            self = .messageSelfDestructTypeTimer(value)
        case .messageSelfDestructTypeImmediately:
            self = .messageSelfDestructTypeImmediately
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSelfDestructTypeTimer(let value):
            try container.encode(Kind.messageSelfDestructTypeTimer, forKey: .type)
            try value.encode(to: encoder)
        case .messageSelfDestructTypeImmediately:
            try container.encode(Kind.messageSelfDestructTypeImmediately, forKey: .type)
        }
    }
}

/// The message will be self-destructed in the specified time after its content was opened
public struct MessageSelfDestructTypeTimer: Codable, Equatable, Hashable {

    /// The message's self-destruct time, in seconds; must be between 0 and 60 in private chats
    public let selfDestructTime: Int


    public init(selfDestructTime: Int) {
        self.selfDestructTime = selfDestructTime
    }
}

