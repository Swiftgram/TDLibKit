//
//  SuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes an action suggested to the current user
public enum SuggestedAction: Codable, Equatable {

    /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
    case suggestedActionEnableArchiveAndMuteNewChats

    /// Suggests the user to check whether they still remember their 2-step verification password
    case suggestedActionCheckPassword

    /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
    case suggestedActionCheckPhoneNumber

    /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
    case suggestedActionViewChecksHint

    /// Suggests the user to convert specified supergroup to a broadcast group
    case suggestedActionConvertToBroadcastGroup(SuggestedActionConvertToBroadcastGroup)

    /// Suggests the user to set a 2-step verification password to be able to log in again
    case suggestedActionSetPassword(SuggestedActionSetPassword)


    private enum Kind: String, Codable {
        case suggestedActionEnableArchiveAndMuteNewChats
        case suggestedActionCheckPassword
        case suggestedActionCheckPhoneNumber
        case suggestedActionViewChecksHint
        case suggestedActionConvertToBroadcastGroup
        case suggestedActionSetPassword
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            self = .suggestedActionEnableArchiveAndMuteNewChats
        case .suggestedActionCheckPassword:
            self = .suggestedActionCheckPassword
        case .suggestedActionCheckPhoneNumber:
            self = .suggestedActionCheckPhoneNumber
        case .suggestedActionViewChecksHint:
            self = .suggestedActionViewChecksHint
        case .suggestedActionConvertToBroadcastGroup:
            let value = try SuggestedActionConvertToBroadcastGroup(from: decoder)
            self = .suggestedActionConvertToBroadcastGroup(value)
        case .suggestedActionSetPassword:
            let value = try SuggestedActionSetPassword(from: decoder)
            self = .suggestedActionSetPassword(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            try container.encode(Kind.suggestedActionEnableArchiveAndMuteNewChats, forKey: .type)
        case .suggestedActionCheckPassword:
            try container.encode(Kind.suggestedActionCheckPassword, forKey: .type)
        case .suggestedActionCheckPhoneNumber:
            try container.encode(Kind.suggestedActionCheckPhoneNumber, forKey: .type)
        case .suggestedActionViewChecksHint:
            try container.encode(Kind.suggestedActionViewChecksHint, forKey: .type)
        case .suggestedActionConvertToBroadcastGroup(let value):
            try container.encode(Kind.suggestedActionConvertToBroadcastGroup, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionSetPassword(let value):
            try container.encode(Kind.suggestedActionSetPassword, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Suggests the user to convert specified supergroup to a broadcast group
public struct SuggestedActionConvertToBroadcastGroup: Codable, Equatable {

    /// Supergroup identifier
    public let supergroupId: Int64


    public init(supergroupId: Int64) {
        self.supergroupId = supergroupId
    }
}

/// Suggests the user to set a 2-step verification password to be able to log in again
public struct SuggestedActionSetPassword: Codable, Equatable {

    /// The number of days to pass between consecutive authorizations if the user declines to set password
    public let authorizationDelay: Int


    public init(authorizationDelay: Int) {
        self.authorizationDelay = authorizationDelay
    }
}

