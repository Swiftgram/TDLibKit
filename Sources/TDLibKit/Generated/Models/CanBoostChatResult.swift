//
//  CanBoostChatResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-986f1ab4
//  https://github.com/tdlib/td/tree/986f1ab4
//

import Foundation


/// Represents result of checking whether the current user can boost the specific chat
public enum CanBoostChatResult: Codable, Equatable, Hashable {

    /// The chat can be boosted
    case canBoostChatResultOk(CanBoostChatResultOk)

    /// The chat can't be boosted
    case canBoostChatResultInvalidChat

    /// The chat is already boosted by the user
    case canBoostChatResultAlreadyBoosted

    /// The user must subscribe to Telegram Premium to be able to boost chats
    case canBoostChatResultPremiumNeeded

    /// The user must have Telegram Premium subscription instead of a gifted Telegram Premium
    case canBoostChatResultPremiumSubscriptionNeeded

    /// The user must wait the specified time before the boost can be moved to another chat
    case canBoostChatResultWaitNeeded(CanBoostChatResultWaitNeeded)


    private enum Kind: String, Codable {
        case canBoostChatResultOk
        case canBoostChatResultInvalidChat
        case canBoostChatResultAlreadyBoosted
        case canBoostChatResultPremiumNeeded
        case canBoostChatResultPremiumSubscriptionNeeded
        case canBoostChatResultWaitNeeded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canBoostChatResultOk:
            let value = try CanBoostChatResultOk(from: decoder)
            self = .canBoostChatResultOk(value)
        case .canBoostChatResultInvalidChat:
            self = .canBoostChatResultInvalidChat
        case .canBoostChatResultAlreadyBoosted:
            self = .canBoostChatResultAlreadyBoosted
        case .canBoostChatResultPremiumNeeded:
            self = .canBoostChatResultPremiumNeeded
        case .canBoostChatResultPremiumSubscriptionNeeded:
            self = .canBoostChatResultPremiumSubscriptionNeeded
        case .canBoostChatResultWaitNeeded:
            let value = try CanBoostChatResultWaitNeeded(from: decoder)
            self = .canBoostChatResultWaitNeeded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .canBoostChatResultOk(let value):
            try container.encode(Kind.canBoostChatResultOk, forKey: .type)
            try value.encode(to: encoder)
        case .canBoostChatResultInvalidChat:
            try container.encode(Kind.canBoostChatResultInvalidChat, forKey: .type)
        case .canBoostChatResultAlreadyBoosted:
            try container.encode(Kind.canBoostChatResultAlreadyBoosted, forKey: .type)
        case .canBoostChatResultPremiumNeeded:
            try container.encode(Kind.canBoostChatResultPremiumNeeded, forKey: .type)
        case .canBoostChatResultPremiumSubscriptionNeeded:
            try container.encode(Kind.canBoostChatResultPremiumSubscriptionNeeded, forKey: .type)
        case .canBoostChatResultWaitNeeded(let value):
            try container.encode(Kind.canBoostChatResultWaitNeeded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The chat can be boosted
public struct CanBoostChatResultOk: Codable, Equatable, Hashable {

    /// Identifier of the currently boosted chat from which boost will be removed; 0 if none
    public let currentlyBoostedChatId: Int64


    public init(currentlyBoostedChatId: Int64) {
        self.currentlyBoostedChatId = currentlyBoostedChatId
    }
}

/// The user must wait the specified time before the boost can be moved to another chat
public struct CanBoostChatResultWaitNeeded: Codable, Equatable, Hashable {

    /// Time left before the user can boost another chat
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

