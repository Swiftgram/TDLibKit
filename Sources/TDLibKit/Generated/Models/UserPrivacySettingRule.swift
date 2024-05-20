//
//  UserPrivacySettingRule.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a single rule for managing user privacy settings
public indirect enum UserPrivacySettingRule: Codable, Equatable, Hashable {

    /// A rule to allow all users to do something
    case userPrivacySettingRuleAllowAll

    /// A rule to allow all contacts of the user to do something
    case userPrivacySettingRuleAllowContacts

    /// A rule to allow all Premium Users to do something; currently, allowed only for userPrivacySettingAllowChatInvites
    case userPrivacySettingRuleAllowPremiumUsers

    /// A rule to allow certain specified users to do something
    case userPrivacySettingRuleAllowUsers(UserPrivacySettingRuleAllowUsers)

    /// A rule to allow all members of certain specified basic groups and supergroups to doing something
    case userPrivacySettingRuleAllowChatMembers(UserPrivacySettingRuleAllowChatMembers)

    /// A rule to restrict all users from doing something
    case userPrivacySettingRuleRestrictAll

    /// A rule to restrict all contacts of the user from doing something
    case userPrivacySettingRuleRestrictContacts

    /// A rule to restrict all specified users from doing something
    case userPrivacySettingRuleRestrictUsers(UserPrivacySettingRuleRestrictUsers)

    /// A rule to restrict all members of specified basic groups and supergroups from doing something
    case userPrivacySettingRuleRestrictChatMembers(UserPrivacySettingRuleRestrictChatMembers)


    private enum Kind: String, Codable {
        case userPrivacySettingRuleAllowAll
        case userPrivacySettingRuleAllowContacts
        case userPrivacySettingRuleAllowPremiumUsers
        case userPrivacySettingRuleAllowUsers
        case userPrivacySettingRuleAllowChatMembers
        case userPrivacySettingRuleRestrictAll
        case userPrivacySettingRuleRestrictContacts
        case userPrivacySettingRuleRestrictUsers
        case userPrivacySettingRuleRestrictChatMembers
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingRuleAllowAll:
            self = .userPrivacySettingRuleAllowAll
        case .userPrivacySettingRuleAllowContacts:
            self = .userPrivacySettingRuleAllowContacts
        case .userPrivacySettingRuleAllowPremiumUsers:
            self = .userPrivacySettingRuleAllowPremiumUsers
        case .userPrivacySettingRuleAllowUsers:
            let value = try UserPrivacySettingRuleAllowUsers(from: decoder)
            self = .userPrivacySettingRuleAllowUsers(value)
        case .userPrivacySettingRuleAllowChatMembers:
            let value = try UserPrivacySettingRuleAllowChatMembers(from: decoder)
            self = .userPrivacySettingRuleAllowChatMembers(value)
        case .userPrivacySettingRuleRestrictAll:
            self = .userPrivacySettingRuleRestrictAll
        case .userPrivacySettingRuleRestrictContacts:
            self = .userPrivacySettingRuleRestrictContacts
        case .userPrivacySettingRuleRestrictUsers:
            let value = try UserPrivacySettingRuleRestrictUsers(from: decoder)
            self = .userPrivacySettingRuleRestrictUsers(value)
        case .userPrivacySettingRuleRestrictChatMembers:
            let value = try UserPrivacySettingRuleRestrictChatMembers(from: decoder)
            self = .userPrivacySettingRuleRestrictChatMembers(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userPrivacySettingRuleAllowAll:
            try container.encode(Kind.userPrivacySettingRuleAllowAll, forKey: .type)
        case .userPrivacySettingRuleAllowContacts:
            try container.encode(Kind.userPrivacySettingRuleAllowContacts, forKey: .type)
        case .userPrivacySettingRuleAllowPremiumUsers:
            try container.encode(Kind.userPrivacySettingRuleAllowPremiumUsers, forKey: .type)
        case .userPrivacySettingRuleAllowUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleAllowUsers, forKey: .type)
            try value.encode(to: encoder)
        case .userPrivacySettingRuleAllowChatMembers(let value):
            try container.encode(Kind.userPrivacySettingRuleAllowChatMembers, forKey: .type)
            try value.encode(to: encoder)
        case .userPrivacySettingRuleRestrictAll:
            try container.encode(Kind.userPrivacySettingRuleRestrictAll, forKey: .type)
        case .userPrivacySettingRuleRestrictContacts:
            try container.encode(Kind.userPrivacySettingRuleRestrictContacts, forKey: .type)
        case .userPrivacySettingRuleRestrictUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleRestrictUsers, forKey: .type)
            try value.encode(to: encoder)
        case .userPrivacySettingRuleRestrictChatMembers(let value):
            try container.encode(Kind.userPrivacySettingRuleRestrictChatMembers, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A rule to allow certain specified users to do something
public struct UserPrivacySettingRuleAllowUsers: Codable, Equatable, Hashable {

    /// The user identifiers, total number of users in all rules must not exceed 1000
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

/// A rule to allow all members of certain specified basic groups and supergroups to doing something
public struct UserPrivacySettingRuleAllowChatMembers: Codable, Equatable, Hashable {

    /// The chat identifiers, total number of chats in all rules must not exceed 20
    public let chatIds: [Int64]


    public init(chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

/// A rule to restrict all specified users from doing something
public struct UserPrivacySettingRuleRestrictUsers: Codable, Equatable, Hashable {

    /// The user identifiers, total number of users in all rules must not exceed 1000
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

/// A rule to restrict all members of specified basic groups and supergroups from doing something
public struct UserPrivacySettingRuleRestrictChatMembers: Codable, Equatable, Hashable {

    /// The chat identifiers, total number of chats in all rules must not exceed 20
    public let chatIds: [Int64]


    public init(chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

