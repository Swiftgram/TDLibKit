//
//  TonConnectConnectItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Represents a data item to share with a dApp
public indirect enum TonConnectConnectItem: Codable, Equatable, Hashable {

    /// Address of the wallet
    case tonConnectConnectItemAddress(TonConnectConnectItemAddress)

    /// Proof of the wallet ownership
    case tonConnectConnectItemProof(TonConnectConnectItemProof)


    private enum Kind: String, Codable {
        case tonConnectConnectItemAddress
        case tonConnectConnectItemProof
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonConnectConnectItemAddress:
            let value = try TonConnectConnectItemAddress(from: decoder)
            self = .tonConnectConnectItemAddress(value)
        case .tonConnectConnectItemProof:
            let value = try TonConnectConnectItemProof(from: decoder)
            self = .tonConnectConnectItemProof(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonConnectConnectItemAddress(let value):
            try container.encode(Kind.tonConnectConnectItemAddress, forKey: .type)
            try value.encode(to: encoder)
        case .tonConnectConnectItemProof(let value):
            try container.encode(Kind.tonConnectConnectItemProof, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Address of the wallet
public struct TonConnectConnectItemAddress: Codable, Equatable, Hashable {

    /// Stringified TON network global_id (e.g. "-239" for mainnet); may be empty
    public let network: String


    public init(network: String) {
        self.network = network
    }
}

/// Proof of the wallet ownership
public struct TonConnectConnectItemProof: Codable, Equatable, Hashable {

    /// Payload to be used for the proof (e.g. nonce + expiration timestamp)
    public let payload: String


    public init(payload: String) {
        self.payload = payload
    }
}

