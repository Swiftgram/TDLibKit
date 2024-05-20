//
//  ChatRevenueWithdrawalState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes state of a chat revenue withdrawal
public indirect enum ChatRevenueWithdrawalState: Codable, Equatable, Hashable {

    /// Withdrawal is pending
    case chatRevenueWithdrawalStatePending

    /// Withdrawal was completed
    case chatRevenueWithdrawalStateCompleted(ChatRevenueWithdrawalStateCompleted)

    /// Withdrawal has_failed
    case chatRevenueWithdrawalStateFailed


    private enum Kind: String, Codable {
        case chatRevenueWithdrawalStatePending
        case chatRevenueWithdrawalStateCompleted
        case chatRevenueWithdrawalStateFailed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatRevenueWithdrawalStatePending:
            self = .chatRevenueWithdrawalStatePending
        case .chatRevenueWithdrawalStateCompleted:
            let value = try ChatRevenueWithdrawalStateCompleted(from: decoder)
            self = .chatRevenueWithdrawalStateCompleted(value)
        case .chatRevenueWithdrawalStateFailed:
            self = .chatRevenueWithdrawalStateFailed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatRevenueWithdrawalStatePending:
            try container.encode(Kind.chatRevenueWithdrawalStatePending, forKey: .type)
        case .chatRevenueWithdrawalStateCompleted(let value):
            try container.encode(Kind.chatRevenueWithdrawalStateCompleted, forKey: .type)
            try value.encode(to: encoder)
        case .chatRevenueWithdrawalStateFailed:
            try container.encode(Kind.chatRevenueWithdrawalStateFailed, forKey: .type)
        }
    }
}

/// Withdrawal was completed
public struct ChatRevenueWithdrawalStateCompleted: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the withdrawal was completed
    public let date: Int

    /// The URL where the withdrawal transaction can be viewed
    public let url: String


    public init(
        date: Int,
        url: String
    ) {
        self.date = date
        self.url = url
    }
}

