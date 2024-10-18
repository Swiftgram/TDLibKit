//
//  StarTransactionDirection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Describes direction of a transaction with Telegram Stars
public indirect enum StarTransactionDirection: Codable, Equatable, Hashable {

    /// The transaction is incoming and increases the number of owned Telegram Stars
    case starTransactionDirectionIncoming

    /// The transaction is outgoing and decreases the number of owned Telegram Stars
    case starTransactionDirectionOutgoing


    private enum Kind: String, Codable {
        case starTransactionDirectionIncoming
        case starTransactionDirectionOutgoing
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .starTransactionDirectionIncoming:
            self = .starTransactionDirectionIncoming
        case .starTransactionDirectionOutgoing:
            self = .starTransactionDirectionOutgoing
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .starTransactionDirectionIncoming:
            try container.encode(Kind.starTransactionDirectionIncoming, forKey: .type)
        case .starTransactionDirectionOutgoing:
            try container.encode(Kind.starTransactionDirectionOutgoing, forKey: .type)
        }
    }
}

