//
//  CommunityMemberStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Provides information about the status of a member in a community
public indirect enum CommunityMemberStatus: Codable, Equatable, Hashable {

    /// The user is the owner of the community and has all the administrator privileges
    case communityMemberStatusCreator

    /// The user is a member of the community and has some additional privileges
    case communityMemberStatusAdministrator(CommunityMemberStatusAdministrator)

    /// The user is a member of the community, without any additional privileges or restrictions
    case communityMemberStatusMember

    /// The user or the chat is not a community member
    case communityMemberStatusLeft

    /// The user or the chat was banned in the community; implies ban in all chats in the community
    case communityMemberStatusBanned


    private enum Kind: String, Codable {
        case communityMemberStatusCreator
        case communityMemberStatusAdministrator
        case communityMemberStatusMember
        case communityMemberStatusLeft
        case communityMemberStatusBanned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .communityMemberStatusCreator:
            self = .communityMemberStatusCreator
        case .communityMemberStatusAdministrator:
            let value = try CommunityMemberStatusAdministrator(from: decoder)
            self = .communityMemberStatusAdministrator(value)
        case .communityMemberStatusMember:
            self = .communityMemberStatusMember
        case .communityMemberStatusLeft:
            self = .communityMemberStatusLeft
        case .communityMemberStatusBanned:
            self = .communityMemberStatusBanned
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .communityMemberStatusCreator:
            try container.encode(Kind.communityMemberStatusCreator, forKey: .type)
        case .communityMemberStatusAdministrator(let value):
            try container.encode(Kind.communityMemberStatusAdministrator, forKey: .type)
            try value.encode(to: encoder)
        case .communityMemberStatusMember:
            try container.encode(Kind.communityMemberStatusMember, forKey: .type)
        case .communityMemberStatusLeft:
            try container.encode(Kind.communityMemberStatusLeft, forKey: .type)
        case .communityMemberStatusBanned:
            try container.encode(Kind.communityMemberStatusBanned, forKey: .type)
        }
    }
}

/// The user is a member of the community and has some additional privileges
public struct CommunityMemberStatusAdministrator: Codable, Equatable, Hashable {

    /// True, if the current user can edit the administrator privileges for the called user
    public let canBeEdited: Bool

    /// Rights of the administrator
    public let rights: CommunityAdministratorRights


    public init(
        canBeEdited: Bool,
        rights: CommunityAdministratorRights
    ) {
        self.canBeEdited = canBeEdited
        self.rights = rights
    }
}

