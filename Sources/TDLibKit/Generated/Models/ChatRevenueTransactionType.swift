//
//  ChatRevenueTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of transaction for revenue earned from sponsored messages in a chat
public indirect enum ChatRevenueTransactionType: Codable, Equatable, Hashable {

    /// Describes earnings from sponsored messages in a chat in some time frame
    case chatRevenueTransactionTypeEarnings(ChatRevenueTransactionTypeEarnings)

    /// Describes a withdrawal of earnings
    case chatRevenueTransactionTypeWithdrawal(ChatRevenueTransactionTypeWithdrawal)

    /// Describes a refund for failed withdrawal of earnings
    case chatRevenueTransactionTypeRefund(ChatRevenueTransactionTypeRefund)


    private enum Kind: String, Codable {
        case chatRevenueTransactionTypeEarnings
        case chatRevenueTransactionTypeWithdrawal
        case chatRevenueTransactionTypeRefund
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatRevenueTransactionTypeEarnings:
            let value = try ChatRevenueTransactionTypeEarnings(from: decoder)
            self = .chatRevenueTransactionTypeEarnings(value)
        case .chatRevenueTransactionTypeWithdrawal:
            let value = try ChatRevenueTransactionTypeWithdrawal(from: decoder)
            self = .chatRevenueTransactionTypeWithdrawal(value)
        case .chatRevenueTransactionTypeRefund:
            let value = try ChatRevenueTransactionTypeRefund(from: decoder)
            self = .chatRevenueTransactionTypeRefund(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatRevenueTransactionTypeEarnings(let value):
            try container.encode(Kind.chatRevenueTransactionTypeEarnings, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueTransactionTypeWithdrawal(let value):
            try container.encode(Kind.chatRevenueTransactionTypeWithdrawal, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueTransactionTypeRefund(let value):
            try container.encode(Kind.chatRevenueTransactionTypeRefund, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes earnings from sponsored messages in a chat in some time frame
public struct ChatRevenueTransactionTypeEarnings: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the earnings ended
    public let endDate: Int

    /// Point in time (Unix timestamp) when the earnings started
    public let startDate: Int


    public init(
        endDate: Int,
        startDate: Int
    ) {
        self.endDate = endDate
        self.startDate = startDate
    }
}

/// Describes a withdrawal of earnings
public struct ChatRevenueTransactionTypeWithdrawal: Codable, Equatable, Hashable {

    /// Name of the payment provider
    public let provider: String

    /// State of the withdrawal
    public let state: ChatRevenueWithdrawalState

    /// Point in time (Unix timestamp) when the earnings withdrawal started
    public let withdrawalDate: Int


    public init(
        provider: String,
        state: ChatRevenueWithdrawalState,
        withdrawalDate: Int
    ) {
        self.provider = provider
        self.state = state
        self.withdrawalDate = withdrawalDate
    }
}

/// Describes a refund for failed withdrawal of earnings
public struct ChatRevenueTransactionTypeRefund: Codable, Equatable, Hashable {

    /// Name of the payment provider
    public let provider: String

    /// Point in time (Unix timestamp) when the transaction was refunded
    public let refundDate: Int


    public init(
        provider: String,
        refundDate: Int
    ) {
        self.provider = provider
        self.refundDate = refundDate
    }
}

