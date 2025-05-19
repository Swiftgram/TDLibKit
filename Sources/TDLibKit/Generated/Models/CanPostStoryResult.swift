//
//  CanPostStoryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Represents result of checking whether the current user can post a story on behalf of the specific chat
public indirect enum CanPostStoryResult: Codable, Equatable, Hashable {

    /// A story can be sent
    case canPostStoryResultOk(CanPostStoryResultOk)

    /// The user must subscribe to Telegram Premium to be able to post stories
    case canPostStoryResultPremiumNeeded

    /// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat
    case canPostStoryResultBoostNeeded

    /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire
    case canPostStoryResultActiveStoryLimitExceeded

    /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
    case canPostStoryResultWeeklyLimitExceeded(CanPostStoryResultWeeklyLimitExceeded)

    /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
    case canPostStoryResultMonthlyLimitExceeded(CanPostStoryResultMonthlyLimitExceeded)


    private enum Kind: String, Codable {
        case canPostStoryResultOk
        case canPostStoryResultPremiumNeeded
        case canPostStoryResultBoostNeeded
        case canPostStoryResultActiveStoryLimitExceeded
        case canPostStoryResultWeeklyLimitExceeded
        case canPostStoryResultMonthlyLimitExceeded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canPostStoryResultOk:
            let value = try CanPostStoryResultOk(from: decoder)
            self = .canPostStoryResultOk(value)
        case .canPostStoryResultPremiumNeeded:
            self = .canPostStoryResultPremiumNeeded
        case .canPostStoryResultBoostNeeded:
            self = .canPostStoryResultBoostNeeded
        case .canPostStoryResultActiveStoryLimitExceeded:
            self = .canPostStoryResultActiveStoryLimitExceeded
        case .canPostStoryResultWeeklyLimitExceeded:
            let value = try CanPostStoryResultWeeklyLimitExceeded(from: decoder)
            self = .canPostStoryResultWeeklyLimitExceeded(value)
        case .canPostStoryResultMonthlyLimitExceeded:
            let value = try CanPostStoryResultMonthlyLimitExceeded(from: decoder)
            self = .canPostStoryResultMonthlyLimitExceeded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .canPostStoryResultOk(let value):
            try container.encode(Kind.canPostStoryResultOk, forKey: .type)
            try value.encode(to: encoder)
        case .canPostStoryResultPremiumNeeded:
            try container.encode(Kind.canPostStoryResultPremiumNeeded, forKey: .type)
        case .canPostStoryResultBoostNeeded:
            try container.encode(Kind.canPostStoryResultBoostNeeded, forKey: .type)
        case .canPostStoryResultActiveStoryLimitExceeded:
            try container.encode(Kind.canPostStoryResultActiveStoryLimitExceeded, forKey: .type)
        case .canPostStoryResultWeeklyLimitExceeded(let value):
            try container.encode(Kind.canPostStoryResultWeeklyLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        case .canPostStoryResultMonthlyLimitExceeded(let value):
            try container.encode(Kind.canPostStoryResultMonthlyLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A story can be sent
public struct CanPostStoryResultOk: Codable, Equatable, Hashable {

    /// Number of stories that can be posted by the user
    public let storyCount: Int


    public init(storyCount: Int) {
        self.storyCount = storyCount
    }
}

/// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
public struct CanPostStoryResultWeeklyLimitExceeded: Codable, Equatable, Hashable {

    /// Time left before the user can post the next story
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

/// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
public struct CanPostStoryResultMonthlyLimitExceeded: Codable, Equatable, Hashable {

    /// Time left before the user can post the next story
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

