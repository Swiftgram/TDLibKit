//
//  ConnectionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the current state of the connection to Telegram servers
public indirect enum ConnectionState: Codable, Equatable, Hashable {

    /// Waiting for the network to become available. Use setNetworkType to change the available network type
    case connectionStateWaitingForNetwork

    /// Establishing a connection with a proxy server
    case connectionStateConnectingToProxy

    /// Establishing a connection to the Telegram servers
    case connectionStateConnecting

    /// Downloading data supposed to be received while the application was offline
    case connectionStateUpdating

    /// There is a working connection to the Telegram servers
    case connectionStateReady


    private enum Kind: String, Codable {
        case connectionStateWaitingForNetwork
        case connectionStateConnectingToProxy
        case connectionStateConnecting
        case connectionStateUpdating
        case connectionStateReady
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .connectionStateWaitingForNetwork:
            self = .connectionStateWaitingForNetwork
        case .connectionStateConnectingToProxy:
            self = .connectionStateConnectingToProxy
        case .connectionStateConnecting:
            self = .connectionStateConnecting
        case .connectionStateUpdating:
            self = .connectionStateUpdating
        case .connectionStateReady:
            self = .connectionStateReady
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .connectionStateWaitingForNetwork:
            try container.encode(Kind.connectionStateWaitingForNetwork, forKey: .type)
        case .connectionStateConnectingToProxy:
            try container.encode(Kind.connectionStateConnectingToProxy, forKey: .type)
        case .connectionStateConnecting:
            try container.encode(Kind.connectionStateConnecting, forKey: .type)
        case .connectionStateUpdating:
            try container.encode(Kind.connectionStateUpdating, forKey: .type)
        case .connectionStateReady:
            try container.encode(Kind.connectionStateReady, forKey: .type)
        }
    }
}

