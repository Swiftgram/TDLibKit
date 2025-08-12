//
//  TonTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Describes type of transaction with Toncoins
public indirect enum TonTransactionType: Codable, Equatable, Hashable {

    /// The transaction is a deposit of Toncoins from Fragment
    case tonTransactionTypeFragmentDeposit(TonTransactionTypeFragmentDeposit)

    /// The transaction is a payment for a suggested post
    case tonTransactionTypeSuggestedPostPayment(TonTransactionTypeSuggestedPostPayment)

    /// The transaction is a transaction of an unsupported type
    case tonTransactionTypeUnsupported


    private enum Kind: String, Codable {
        case tonTransactionTypeFragmentDeposit
        case tonTransactionTypeSuggestedPostPayment
        case tonTransactionTypeUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonTransactionTypeFragmentDeposit:
            let value = try TonTransactionTypeFragmentDeposit(from: decoder)
            self = .tonTransactionTypeFragmentDeposit(value)
        case .tonTransactionTypeSuggestedPostPayment:
            let value = try TonTransactionTypeSuggestedPostPayment(from: decoder)
            self = .tonTransactionTypeSuggestedPostPayment(value)
        case .tonTransactionTypeUnsupported:
            self = .tonTransactionTypeUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonTransactionTypeFragmentDeposit(let value):
            try container.encode(Kind.tonTransactionTypeFragmentDeposit, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeSuggestedPostPayment(let value):
            try container.encode(Kind.tonTransactionTypeSuggestedPostPayment, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeUnsupported:
            try container.encode(Kind.tonTransactionTypeUnsupported, forKey: .type)
        }
    }
}

/// The transaction is a deposit of Toncoins from Fragment
public struct TonTransactionTypeFragmentDeposit: Codable, Equatable, Hashable {

    /// True, if the transaction is a gift from another user
    public let isGift: Bool

    /// The sticker to be shown in the transaction information; may be null if unknown
    public let sticker: Sticker?


    public init(
        isGift: Bool,
        sticker: Sticker?
    ) {
        self.isGift = isGift
        self.sticker = sticker
    }
}

/// The transaction is a payment for a suggested post
public struct TonTransactionTypeSuggestedPostPayment: Codable, Equatable, Hashable {

    /// Identifier of the channel chat that posted the post
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

