//
//  TransactionDirection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Describes direction of transactions in a transaction list
public indirect enum TransactionDirection: Codable, Equatable, Hashable {

    /// The transaction is incoming and increases the amount of owned currency
    case transactionDirectionIncoming

    /// The transaction is outgoing and decreases the amount of owned currency
    case transactionDirectionOutgoing


    private enum Kind: String, Codable {
        case transactionDirectionIncoming
        case transactionDirectionOutgoing
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .transactionDirectionIncoming:
            self = .transactionDirectionIncoming
        case .transactionDirectionOutgoing:
            self = .transactionDirectionOutgoing
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .transactionDirectionIncoming:
            try container.encode(Kind.transactionDirectionIncoming, forKey: .type)
        case .transactionDirectionOutgoing:
            try container.encode(Kind.transactionDirectionOutgoing, forKey: .type)
        }
    }
}

