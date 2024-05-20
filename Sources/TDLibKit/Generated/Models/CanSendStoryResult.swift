//
//  CanSendStoryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents result of checking whether the current user can send a story in the specific chat
public indirect enum CanSendStoryResult: Codable, Equatable, Hashable {

    /// A story can be sent
    case canSendStoryResultOk

    /// The user must subscribe to Telegram Premium to be able to post stories
    case canSendStoryResultPremiumNeeded

    /// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat
    case canSendStoryResultBoostNeeded

    /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire
    case canSendStoryResultActiveStoryLimitExceeded

    /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
    case canSendStoryResultWeeklyLimitExceeded(CanSendStoryResultWeeklyLimitExceeded)

    /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
    case canSendStoryResultMonthlyLimitExceeded(CanSendStoryResultMonthlyLimitExceeded)


    private enum Kind: String, Codable {
        case canSendStoryResultOk
        case canSendStoryResultPremiumNeeded
        case canSendStoryResultBoostNeeded
        case canSendStoryResultActiveStoryLimitExceeded
        case canSendStoryResultWeeklyLimitExceeded
        case canSendStoryResultMonthlyLimitExceeded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canSendStoryResultOk:
            self = .canSendStoryResultOk
        case .canSendStoryResultPremiumNeeded:
            self = .canSendStoryResultPremiumNeeded
        case .canSendStoryResultBoostNeeded:
            self = .canSendStoryResultBoostNeeded
        case .canSendStoryResultActiveStoryLimitExceeded:
            self = .canSendStoryResultActiveStoryLimitExceeded
        case .canSendStoryResultWeeklyLimitExceeded:
            let value = try CanSendStoryResultWeeklyLimitExceeded(from: decoder)
            self = .canSendStoryResultWeeklyLimitExceeded(value)
        case .canSendStoryResultMonthlyLimitExceeded:
            let value = try CanSendStoryResultMonthlyLimitExceeded(from: decoder)
            self = .canSendStoryResultMonthlyLimitExceeded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .canSendStoryResultOk:
            try container.encode(Kind.canSendStoryResultOk, forKey: .type)
        case .canSendStoryResultPremiumNeeded:
            try container.encode(Kind.canSendStoryResultPremiumNeeded, forKey: .type)
        case .canSendStoryResultBoostNeeded:
            try container.encode(Kind.canSendStoryResultBoostNeeded, forKey: .type)
        case .canSendStoryResultActiveStoryLimitExceeded:
            try container.encode(Kind.canSendStoryResultActiveStoryLimitExceeded, forKey: .type)
        case .canSendStoryResultWeeklyLimitExceeded(let value):
            try container.encode(Kind.canSendStoryResultWeeklyLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        case .canSendStoryResultMonthlyLimitExceeded(let value):
            try container.encode(Kind.canSendStoryResultMonthlyLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
public struct CanSendStoryResultWeeklyLimitExceeded: Codable, Equatable, Hashable {

    /// Time left before the user can send the next story
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

/// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
public struct CanSendStoryResultMonthlyLimitExceeded: Codable, Equatable, Hashable {

    /// Time left before the user can send the next story
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

