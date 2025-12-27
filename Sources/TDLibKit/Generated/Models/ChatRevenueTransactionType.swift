//
//  ChatRevenueTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes type of transaction for revenue earned from sponsored messages in a chat
public indirect enum ChatRevenueTransactionType: Codable, Equatable, Hashable {

    /// Describes an unsupported transaction
    case chatRevenueTransactionTypeUnsupported

    /// Describes earnings from sponsored messages in a chat in some time frame
    case chatRevenueTransactionTypeSponsoredMessageEarnings(ChatRevenueTransactionTypeSponsoredMessageEarnings)

    /// Describes earnings from a published suggested post
    case chatRevenueTransactionTypeSuggestedPostEarnings(ChatRevenueTransactionTypeSuggestedPostEarnings)

    /// Describes a withdrawal of earnings through Fragment
    case chatRevenueTransactionTypeFragmentWithdrawal(ChatRevenueTransactionTypeFragmentWithdrawal)

    /// Describes a refund for failed withdrawal of earnings through Fragment
    case chatRevenueTransactionTypeFragmentRefund(ChatRevenueTransactionTypeFragmentRefund)


    private enum Kind: String, Codable {
        case chatRevenueTransactionTypeUnsupported
        case chatRevenueTransactionTypeSponsoredMessageEarnings
        case chatRevenueTransactionTypeSuggestedPostEarnings
        case chatRevenueTransactionTypeFragmentWithdrawal
        case chatRevenueTransactionTypeFragmentRefund
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatRevenueTransactionTypeUnsupported:
            self = .chatRevenueTransactionTypeUnsupported
        case .chatRevenueTransactionTypeSponsoredMessageEarnings:
            let value = try ChatRevenueTransactionTypeSponsoredMessageEarnings(from: decoder)
            self = .chatRevenueTransactionTypeSponsoredMessageEarnings(value)
        case .chatRevenueTransactionTypeSuggestedPostEarnings:
            let value = try ChatRevenueTransactionTypeSuggestedPostEarnings(from: decoder)
            self = .chatRevenueTransactionTypeSuggestedPostEarnings(value)
        case .chatRevenueTransactionTypeFragmentWithdrawal:
            let value = try ChatRevenueTransactionTypeFragmentWithdrawal(from: decoder)
            self = .chatRevenueTransactionTypeFragmentWithdrawal(value)
        case .chatRevenueTransactionTypeFragmentRefund:
            let value = try ChatRevenueTransactionTypeFragmentRefund(from: decoder)
            self = .chatRevenueTransactionTypeFragmentRefund(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatRevenueTransactionTypeUnsupported:
            try container.encode(Kind.chatRevenueTransactionTypeUnsupported, forKey: .type)
        case .chatRevenueTransactionTypeSponsoredMessageEarnings(let value):
            try container.encode(Kind.chatRevenueTransactionTypeSponsoredMessageEarnings, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueTransactionTypeSuggestedPostEarnings(let value):
            try container.encode(Kind.chatRevenueTransactionTypeSuggestedPostEarnings, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueTransactionTypeFragmentWithdrawal(let value):
            try container.encode(Kind.chatRevenueTransactionTypeFragmentWithdrawal, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueTransactionTypeFragmentRefund(let value):
            try container.encode(Kind.chatRevenueTransactionTypeFragmentRefund, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes earnings from sponsored messages in a chat in some time frame
public struct ChatRevenueTransactionTypeSponsoredMessageEarnings: Codable, Equatable, Hashable {

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

/// Describes earnings from a published suggested post
public struct ChatRevenueTransactionTypeSuggestedPostEarnings: Codable, Equatable, Hashable {

    /// Identifier of the user that paid for the suggested post
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// Describes a withdrawal of earnings through Fragment
public struct ChatRevenueTransactionTypeFragmentWithdrawal: Codable, Equatable, Hashable {

    /// State of the withdrawal
    public let state: RevenueWithdrawalState

    /// Point in time (Unix timestamp) when the earnings withdrawal started
    public let withdrawalDate: Int


    public init(
        state: RevenueWithdrawalState,
        withdrawalDate: Int
    ) {
        self.state = state
        self.withdrawalDate = withdrawalDate
    }
}

/// Describes a refund for failed withdrawal of earnings through Fragment
public struct ChatRevenueTransactionTypeFragmentRefund: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the transaction was refunded
    public let refundDate: Int


    public init(refundDate: Int) {
        self.refundDate = refundDate
    }
}

