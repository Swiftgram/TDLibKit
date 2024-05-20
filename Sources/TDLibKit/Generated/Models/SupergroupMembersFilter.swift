//
//  SupergroupMembersFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Specifies the kind of chat members to return in getSupergroupMembers
public indirect enum SupergroupMembersFilter: Codable, Equatable, Hashable {

    /// Returns recently active users in reverse chronological order
    case supergroupMembersFilterRecent

    /// Returns contacts of the user, which are members of the supergroup or channel
    case supergroupMembersFilterContacts(SupergroupMembersFilterContacts)

    /// Returns the owner and administrators
    case supergroupMembersFilterAdministrators

    /// Used to search for supergroup or channel members via a (string) query
    case supergroupMembersFilterSearch(SupergroupMembersFilterSearch)

    /// Returns restricted supergroup members; can be used only by administrators
    case supergroupMembersFilterRestricted(SupergroupMembersFilterRestricted)

    /// Returns users banned from the supergroup or channel; can be used only by administrators
    case supergroupMembersFilterBanned(SupergroupMembersFilterBanned)

    /// Returns users which can be mentioned in the supergroup
    case supergroupMembersFilterMention(SupergroupMembersFilterMention)

    /// Returns bot members of the supergroup or channel
    case supergroupMembersFilterBots


    private enum Kind: String, Codable {
        case supergroupMembersFilterRecent
        case supergroupMembersFilterContacts
        case supergroupMembersFilterAdministrators
        case supergroupMembersFilterSearch
        case supergroupMembersFilterRestricted
        case supergroupMembersFilterBanned
        case supergroupMembersFilterMention
        case supergroupMembersFilterBots
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .supergroupMembersFilterRecent:
            self = .supergroupMembersFilterRecent
        case .supergroupMembersFilterContacts:
            let value = try SupergroupMembersFilterContacts(from: decoder)
            self = .supergroupMembersFilterContacts(value)
        case .supergroupMembersFilterAdministrators:
            self = .supergroupMembersFilterAdministrators
        case .supergroupMembersFilterSearch:
            let value = try SupergroupMembersFilterSearch(from: decoder)
            self = .supergroupMembersFilterSearch(value)
        case .supergroupMembersFilterRestricted:
            let value = try SupergroupMembersFilterRestricted(from: decoder)
            self = .supergroupMembersFilterRestricted(value)
        case .supergroupMembersFilterBanned:
            let value = try SupergroupMembersFilterBanned(from: decoder)
            self = .supergroupMembersFilterBanned(value)
        case .supergroupMembersFilterMention:
            let value = try SupergroupMembersFilterMention(from: decoder)
            self = .supergroupMembersFilterMention(value)
        case .supergroupMembersFilterBots:
            self = .supergroupMembersFilterBots
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .supergroupMembersFilterRecent:
            try container.encode(Kind.supergroupMembersFilterRecent, forKey: .type)
        case .supergroupMembersFilterContacts(let value):
            try container.encode(Kind.supergroupMembersFilterContacts, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterAdministrators:
            try container.encode(Kind.supergroupMembersFilterAdministrators, forKey: .type)
        case .supergroupMembersFilterSearch(let value):
            try container.encode(Kind.supergroupMembersFilterSearch, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterRestricted(let value):
            try container.encode(Kind.supergroupMembersFilterRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterBanned(let value):
            try container.encode(Kind.supergroupMembersFilterBanned, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterMention(let value):
            try container.encode(Kind.supergroupMembersFilterMention, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterBots:
            try container.encode(Kind.supergroupMembersFilterBots, forKey: .type)
        }
    }
}

/// Returns contacts of the user, which are members of the supergroup or channel
public struct SupergroupMembersFilterContacts: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String


    public init(query: String) {
        self.query = query
    }
}

/// Used to search for supergroup or channel members via a (string) query
public struct SupergroupMembersFilterSearch: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String


    public init(query: String) {
        self.query = query
    }
}

/// Returns restricted supergroup members; can be used only by administrators
public struct SupergroupMembersFilterRestricted: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String


    public init(query: String) {
        self.query = query
    }
}

/// Returns users banned from the supergroup or channel; can be used only by administrators
public struct SupergroupMembersFilterBanned: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String


    public init(query: String) {
        self.query = query
    }
}

/// Returns users which can be mentioned in the supergroup
public struct SupergroupMembersFilterMention: Codable, Equatable, Hashable {

    /// If non-zero, the identifier of the current message thread
    public let messageThreadId: Int64

    /// Query to search for
    public let query: String


    public init(
        messageThreadId: Int64,
        query: String
    ) {
        self.messageThreadId = messageThreadId
        self.query = query
    }
}

