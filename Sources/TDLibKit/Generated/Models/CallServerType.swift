//
//  CallServerType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-5a764139
//  https://github.com/tdlib/td/tree/5a764139
//

import Foundation


/// Describes the type of a call server
public enum CallServerType: Codable, Equatable {

    /// A Telegram call reflector
    case callServerTypeTelegramReflector(CallServerTypeTelegramReflector)

    /// A WebRTC server
    case callServerTypeWebrtc(CallServerTypeWebrtc)


    private enum Kind: String, Codable {
        case callServerTypeTelegramReflector
        case callServerTypeWebrtc
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callServerTypeTelegramReflector:
            let value = try CallServerTypeTelegramReflector(from: decoder)
            self = .callServerTypeTelegramReflector(value)
        case .callServerTypeWebrtc:
            let value = try CallServerTypeWebrtc(from: decoder)
            self = .callServerTypeWebrtc(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callServerTypeTelegramReflector(let value):
            try container.encode(Kind.callServerTypeTelegramReflector, forKey: .type)
            try value.encode(to: encoder)
        case .callServerTypeWebrtc(let value):
            try container.encode(Kind.callServerTypeWebrtc, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Telegram call reflector
public struct CallServerTypeTelegramReflector: Codable, Equatable {

    /// A peer tag to be used with the reflector
    public let peerTag: Data


    public init(peerTag: Data) {
        self.peerTag = peerTag
    }
}

/// A WebRTC server
public struct CallServerTypeWebrtc: Codable, Equatable {

    /// Authentication password
    public let password: String

    /// True, if the server supports STUN
    public let supportsStun: Bool

    /// True, if the server supports TURN
    public let supportsTurn: Bool

    /// Username to be used for authentication
    public let username: String


    public init(
        password: String,
        supportsStun: Bool,
        supportsTurn: Bool,
        username: String
    ) {
        self.password = password
        self.supportsStun = supportsStun
        self.supportsTurn = supportsTurn
        self.username = username
    }
}

