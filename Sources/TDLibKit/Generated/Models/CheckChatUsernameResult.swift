//
//  CheckChatUsernameResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents result of checking whether a username can be set for a chat
public indirect enum CheckChatUsernameResult: Codable, Equatable, Hashable {

    /// The username can be set
    case checkChatUsernameResultOk

    /// The username is invalid
    case checkChatUsernameResultUsernameInvalid

    /// The username is occupied
    case checkChatUsernameResultUsernameOccupied

    /// The username can be purchased at https://fragment.com. Information about the username can be received using getCollectibleItemInfo
    case checkChatUsernameResultUsernamePurchasable

    /// The user has too many chats with username, one of them must be made private first
    case checkChatUsernameResultPublicChatsTooMany

    /// The user can't be a member of a public supergroup
    case checkChatUsernameResultPublicGroupsUnavailable


    private enum Kind: String, Codable {
        case checkChatUsernameResultOk
        case checkChatUsernameResultUsernameInvalid
        case checkChatUsernameResultUsernameOccupied
        case checkChatUsernameResultUsernamePurchasable
        case checkChatUsernameResultPublicChatsTooMany
        case checkChatUsernameResultPublicGroupsUnavailable
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .checkChatUsernameResultOk:
            self = .checkChatUsernameResultOk
        case .checkChatUsernameResultUsernameInvalid:
            self = .checkChatUsernameResultUsernameInvalid
        case .checkChatUsernameResultUsernameOccupied:
            self = .checkChatUsernameResultUsernameOccupied
        case .checkChatUsernameResultUsernamePurchasable:
            self = .checkChatUsernameResultUsernamePurchasable
        case .checkChatUsernameResultPublicChatsTooMany:
            self = .checkChatUsernameResultPublicChatsTooMany
        case .checkChatUsernameResultPublicGroupsUnavailable:
            self = .checkChatUsernameResultPublicGroupsUnavailable
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .checkChatUsernameResultOk:
            try container.encode(Kind.checkChatUsernameResultOk, forKey: .type)
        case .checkChatUsernameResultUsernameInvalid:
            try container.encode(Kind.checkChatUsernameResultUsernameInvalid, forKey: .type)
        case .checkChatUsernameResultUsernameOccupied:
            try container.encode(Kind.checkChatUsernameResultUsernameOccupied, forKey: .type)
        case .checkChatUsernameResultUsernamePurchasable:
            try container.encode(Kind.checkChatUsernameResultUsernamePurchasable, forKey: .type)
        case .checkChatUsernameResultPublicChatsTooMany:
            try container.encode(Kind.checkChatUsernameResultPublicChatsTooMany, forKey: .type)
        case .checkChatUsernameResultPublicGroupsUnavailable:
            try container.encode(Kind.checkChatUsernameResultPublicGroupsUnavailable, forKey: .type)
        }
    }
}

