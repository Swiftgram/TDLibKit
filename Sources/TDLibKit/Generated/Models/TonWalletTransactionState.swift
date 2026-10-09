//
//  TonWalletTransactionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Describes state of a transaction with a TON wallet
public indirect enum TonWalletTransactionState: Codable, Equatable, Hashable {

    /// The transaction succeeded
    case tonWalletTransactionStateSucceeded(TonWalletTransactionStateSucceeded)

    /// The transaction failed
    case tonWalletTransactionStateFailed


    private enum Kind: String, Codable {
        case tonWalletTransactionStateSucceeded
        case tonWalletTransactionStateFailed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonWalletTransactionStateSucceeded:
            let value = try TonWalletTransactionStateSucceeded(from: decoder)
            self = .tonWalletTransactionStateSucceeded(value)
        case .tonWalletTransactionStateFailed:
            self = .tonWalletTransactionStateFailed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonWalletTransactionStateSucceeded(let value):
            try container.encode(Kind.tonWalletTransactionStateSucceeded, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionStateFailed:
            try container.encode(Kind.tonWalletTransactionStateFailed, forKey: .type)
        }
    }
}

/// The transaction succeeded
public struct TonWalletTransactionStateSucceeded: Codable, Equatable, Hashable {

    /// Hash of the transaction
    public let txHash: String


    public init(txHash: String) {
        self.txHash = txHash
    }
}

