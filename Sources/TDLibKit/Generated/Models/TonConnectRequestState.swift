//
//  TonConnectRequestState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Describes state of a request received from a dApp through TON Connect
public indirect enum TonConnectRequestState: Codable, Equatable, Hashable {

    /// The request must be accepted or rejected if it isn't expired yet
    case tonConnectRequestStatePending(TonConnectRequestStatePending)

    /// The request was accepted
    case tonConnectRequestStateAccepted

    /// The request was rejected
    case tonConnectRequestStateRejected


    private enum Kind: String, Codable {
        case tonConnectRequestStatePending
        case tonConnectRequestStateAccepted
        case tonConnectRequestStateRejected
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonConnectRequestStatePending:
            let value = try TonConnectRequestStatePending(from: decoder)
            self = .tonConnectRequestStatePending(value)
        case .tonConnectRequestStateAccepted:
            self = .tonConnectRequestStateAccepted
        case .tonConnectRequestStateRejected:
            self = .tonConnectRequestStateRejected
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonConnectRequestStatePending(let value):
            try container.encode(Kind.tonConnectRequestStatePending, forKey: .type)
            try value.encode(to: encoder)
        case .tonConnectRequestStateAccepted:
            try container.encode(Kind.tonConnectRequestStateAccepted, forKey: .type)
        case .tonConnectRequestStateRejected:
            try container.encode(Kind.tonConnectRequestStateRejected, forKey: .type)
        }
    }
}

/// The request must be accepted or rejected if it isn't expired yet
public struct TonConnectRequestStatePending: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the request will expire or has expired
    public let expirationDate: Int


    public init(expirationDate: Int) {
        self.expirationDate = expirationDate
    }
}

