//
//  TonConnectSessionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Describes state of a TON Connect session
public indirect enum TonConnectSessionState: Codable, Equatable, Hashable {

    /// The session is pending
    case tonConnectSessionStatePending

    /// The session is ready
    case tonConnectSessionStateReady

    /// The session is being closed
    case tonConnectSessionStateClosing

    /// The session is closed
    case tonConnectSessionStateClosed


    private enum Kind: String, Codable {
        case tonConnectSessionStatePending
        case tonConnectSessionStateReady
        case tonConnectSessionStateClosing
        case tonConnectSessionStateClosed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonConnectSessionStatePending:
            self = .tonConnectSessionStatePending
        case .tonConnectSessionStateReady:
            self = .tonConnectSessionStateReady
        case .tonConnectSessionStateClosing:
            self = .tonConnectSessionStateClosing
        case .tonConnectSessionStateClosed:
            self = .tonConnectSessionStateClosed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonConnectSessionStatePending:
            try container.encode(Kind.tonConnectSessionStatePending, forKey: .type)
        case .tonConnectSessionStateReady:
            try container.encode(Kind.tonConnectSessionStateReady, forKey: .type)
        case .tonConnectSessionStateClosing:
            try container.encode(Kind.tonConnectSessionStateClosing, forKey: .type)
        case .tonConnectSessionStateClosed:
            try container.encode(Kind.tonConnectSessionStateClosed, forKey: .type)
        }
    }
}

