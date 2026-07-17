//
//  SessionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Describes type of user session
public indirect enum SessionType: Codable, Equatable, Hashable {

    /// A regular session from a device
    case sessionTypeDevice(SessionTypeDevice)

    /// A business bot connected to the current user's account
    case sessionTypeConnectedBot(SessionTypeConnectedBot)


    private enum Kind: String, Codable {
        case sessionTypeDevice
        case sessionTypeConnectedBot
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .sessionTypeDevice:
            let value = try SessionTypeDevice(from: decoder)
            self = .sessionTypeDevice(value)
        case .sessionTypeConnectedBot:
            let value = try SessionTypeConnectedBot(from: decoder)
            self = .sessionTypeConnectedBot(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .sessionTypeDevice(let value):
            try container.encode(Kind.sessionTypeDevice, forKey: .type)
            try value.encode(to: encoder)
        case .sessionTypeConnectedBot(let value):
            try container.encode(Kind.sessionTypeConnectedBot, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A regular session from a device
public struct SessionTypeDevice: Codable, Equatable, Hashable {

    /// Unique identifier of the session. Use terminateSession to terminate it or confirmSession to confirm it if it isn't confirmed yet
    public let sessionId: TdInt64


    public init(sessionId: TdInt64) {
        self.sessionId = sessionId
    }
}

/// A business bot connected to the current user's account
public struct SessionTypeConnectedBot: Codable, Equatable, Hashable {

    /// User identifier of the bot. Use deleteBusinessConnectedBot to remove it or confirmBusinessConnectedBot to confirm it if it isn't confirmed yet
    public let botUserId: Int64


    public init(botUserId: Int64) {
        self.botUserId = botUserId
    }
}

