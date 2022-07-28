//
//  CheckChatUsernameResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents result of checking whether a username can be set for a chat
public enum CheckChatUsernameResult: Codable, Equatable {

    /// The username can be set
    case checkChatUsernameResultOk

    /// The username is invalid
    case checkChatUsernameResultUsernameInvalid

    /// The username is occupied
    case checkChatUsernameResultUsernameOccupied

    /// The user has too many chats with username, one of them must be made private first
    case checkChatUsernameResultPublicChatsTooMuch

    /// The user can't be a member of a public supergroup
    case checkChatUsernameResultPublicGroupsUnavailable


    private enum Kind: String, Codable {
        case checkChatUsernameResultOk
        case checkChatUsernameResultUsernameInvalid
        case checkChatUsernameResultUsernameOccupied
        case checkChatUsernameResultPublicChatsTooMuch
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
        case .checkChatUsernameResultPublicChatsTooMuch:
            self = .checkChatUsernameResultPublicChatsTooMuch
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
        case .checkChatUsernameResultPublicChatsTooMuch:
            try container.encode(Kind.checkChatUsernameResultPublicChatsTooMuch, forKey: .type)
        case .checkChatUsernameResultPublicGroupsUnavailable:
            try container.encode(Kind.checkChatUsernameResultPublicGroupsUnavailable, forKey: .type)
        }
    }
}

