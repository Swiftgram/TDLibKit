//
//  ChatMemberStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Provides information about the status of a member in a chat
public indirect enum ChatMemberStatus: Codable, Equatable, Hashable {

    /// The user is the owner of the chat and has all the administrator privileges
    case chatMemberStatusCreator(ChatMemberStatusCreator)

    /// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats. In supergroups and channels, there are more detailed options for administrator privileges
    case chatMemberStatusAdministrator(ChatMemberStatusAdministrator)

    /// The user is a member of the chat, without any additional privileges or restrictions
    case chatMemberStatusMember

    /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
    case chatMemberStatusRestricted(ChatMemberStatusRestricted)

    /// The user or the chat is not a chat member
    case chatMemberStatusLeft

    /// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat
    case chatMemberStatusBanned(ChatMemberStatusBanned)


    private enum Kind: String, Codable {
        case chatMemberStatusCreator
        case chatMemberStatusAdministrator
        case chatMemberStatusMember
        case chatMemberStatusRestricted
        case chatMemberStatusLeft
        case chatMemberStatusBanned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatMemberStatusCreator:
            let value = try ChatMemberStatusCreator(from: decoder)
            self = .chatMemberStatusCreator(value)
        case .chatMemberStatusAdministrator:
            let value = try ChatMemberStatusAdministrator(from: decoder)
            self = .chatMemberStatusAdministrator(value)
        case .chatMemberStatusMember:
            self = .chatMemberStatusMember
        case .chatMemberStatusRestricted:
            let value = try ChatMemberStatusRestricted(from: decoder)
            self = .chatMemberStatusRestricted(value)
        case .chatMemberStatusLeft:
            self = .chatMemberStatusLeft
        case .chatMemberStatusBanned:
            let value = try ChatMemberStatusBanned(from: decoder)
            self = .chatMemberStatusBanned(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatMemberStatusCreator(let value):
            try container.encode(Kind.chatMemberStatusCreator, forKey: .type)
            try value.encode(to: encoder)
        case .chatMemberStatusAdministrator(let value):
            try container.encode(Kind.chatMemberStatusAdministrator, forKey: .type)
            try value.encode(to: encoder)
        case .chatMemberStatusMember:
            try container.encode(Kind.chatMemberStatusMember, forKey: .type)
        case .chatMemberStatusRestricted(let value):
            try container.encode(Kind.chatMemberStatusRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .chatMemberStatusLeft:
            try container.encode(Kind.chatMemberStatusLeft, forKey: .type)
        case .chatMemberStatusBanned(let value):
            try container.encode(Kind.chatMemberStatusBanned, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user is the owner of the chat and has all the administrator privileges
public struct ChatMemberStatusCreator: Codable, Equatable, Hashable {

    /// A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
    public let customTitle: String

    /// True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
    public let isAnonymous: Bool

    /// True, if the user is a member of the chat
    public let isMember: Bool


    public init(
        customTitle: String,
        isAnonymous: Bool,
        isMember: Bool
    ) {
        self.customTitle = customTitle
        self.isAnonymous = isAnonymous
        self.isMember = isMember
    }
}

/// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats. In supergroups and channels, there are more detailed options for administrator privileges
public struct ChatMemberStatusAdministrator: Codable, Equatable, Hashable {

    /// True, if the current user can edit the administrator privileges for the called user
    public let canBeEdited: Bool

    /// A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
    public let customTitle: String

    /// Rights of the administrator
    public let rights: ChatAdministratorRights


    public init(
        canBeEdited: Bool,
        customTitle: String,
        rights: ChatAdministratorRights
    ) {
        self.canBeEdited = canBeEdited
        self.customTitle = customTitle
        self.rights = rights
    }
}

/// The user is under certain restrictions in the chat. Not supported in basic groups and channels
public struct ChatMemberStatusRestricted: Codable, Equatable, Hashable {

    /// True, if the user is a member of the chat
    public let isMember: Bool

    /// User permissions in the chat
    public let permissions: ChatPermissions

    /// Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
    public let restrictedUntilDate: Int


    public init(
        isMember: Bool,
        permissions: ChatPermissions,
        restrictedUntilDate: Int
    ) {
        self.isMember = isMember
        self.permissions = permissions
        self.restrictedUntilDate = restrictedUntilDate
    }
}

/// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat
public struct ChatMemberStatusBanned: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups
    public let bannedUntilDate: Int


    public init(bannedUntilDate: Int) {
        self.bannedUntilDate = bannedUntilDate
    }
}

