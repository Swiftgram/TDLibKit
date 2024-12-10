//
//  RevenueWithdrawalState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Describes state of a revenue withdrawal
public indirect enum RevenueWithdrawalState: Codable, Equatable, Hashable {

    /// Withdrawal is pending
    case revenueWithdrawalStatePending

    /// Withdrawal succeeded
    case revenueWithdrawalStateSucceeded(RevenueWithdrawalStateSucceeded)

    /// Withdrawal failed
    case revenueWithdrawalStateFailed


    private enum Kind: String, Codable {
        case revenueWithdrawalStatePending
        case revenueWithdrawalStateSucceeded
        case revenueWithdrawalStateFailed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .revenueWithdrawalStatePending:
            self = .revenueWithdrawalStatePending
        case .revenueWithdrawalStateSucceeded:
            let value = try RevenueWithdrawalStateSucceeded(from: decoder)
            self = .revenueWithdrawalStateSucceeded(value)
        case .revenueWithdrawalStateFailed:
            self = .revenueWithdrawalStateFailed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .revenueWithdrawalStatePending:
            try container.encode(Kind.revenueWithdrawalStatePending, forKey: .type)
        case .revenueWithdrawalStateSucceeded(let value):
            try container.encode(Kind.revenueWithdrawalStateSucceeded, forKey: .type)
            try value.encode(to: encoder)
        case .revenueWithdrawalStateFailed:
            try container.encode(Kind.revenueWithdrawalStateFailed, forKey: .type)
        }
    }
}

/// Withdrawal succeeded
public struct RevenueWithdrawalStateSucceeded: Codable, Equatable, Hashable {

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

