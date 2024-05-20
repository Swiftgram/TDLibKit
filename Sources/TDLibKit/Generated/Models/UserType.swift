//
//  UserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the type of user. The following types are possible: regular users, deleted users and bots
public indirect enum UserType: Codable, Equatable, Hashable {

    /// A regular user
    case userTypeRegular

    /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
    case userTypeDeleted

    /// A bot (see https://core.telegram.org/bots)
    case userTypeBot(UserTypeBot)

    /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
    case userTypeUnknown


    private enum Kind: String, Codable {
        case userTypeRegular
        case userTypeDeleted
        case userTypeBot
        case userTypeUnknown
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userTypeRegular:
            self = .userTypeRegular
        case .userTypeDeleted:
            self = .userTypeDeleted
        case .userTypeBot:
            let value = try UserTypeBot(from: decoder)
            self = .userTypeBot(value)
        case .userTypeUnknown:
            self = .userTypeUnknown
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userTypeRegular:
            try container.encode(Kind.userTypeRegular, forKey: .type)
        case .userTypeDeleted:
            try container.encode(Kind.userTypeDeleted, forKey: .type)
        case .userTypeBot(let value):
            try container.encode(Kind.userTypeBot, forKey: .type)
            try value.encode(to: encoder)
        case .userTypeUnknown:
            try container.encode(Kind.userTypeUnknown, forKey: .type)
        }
    }
}

/// A bot (see https://core.telegram.org/bots)
public struct UserTypeBot: Codable, Equatable, Hashable {

    /// True, if the bot can be added to attachment or side menu
    public let canBeAddedToAttachmentMenu: Bool

    /// True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription
    public let canBeEdited: Bool

    /// True, if the bot supports connection to Telegram Business accounts
    public let canConnectToBusiness: Bool

    /// True, if the bot can be invited to basic group and supergroup chats
    public let canJoinGroups: Bool

    /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
    public let canReadAllGroupMessages: Bool

    /// Placeholder for inline queries (displayed on the application input field)
    public let inlineQueryPlaceholder: String

    /// True, if the bot supports inline queries
    public let isInline: Bool

    /// True, if the location of the user is expected to be sent with every inline query to this bot
    public let needLocation: Bool


    public init(
        canBeAddedToAttachmentMenu: Bool,
        canBeEdited: Bool,
        canConnectToBusiness: Bool,
        canJoinGroups: Bool,
        canReadAllGroupMessages: Bool,
        inlineQueryPlaceholder: String,
        isInline: Bool,
        needLocation: Bool
    ) {
        self.canBeAddedToAttachmentMenu = canBeAddedToAttachmentMenu
        self.canBeEdited = canBeEdited
        self.canConnectToBusiness = canConnectToBusiness
        self.canJoinGroups = canJoinGroups
        self.canReadAllGroupMessages = canReadAllGroupMessages
        self.inlineQueryPlaceholder = inlineQueryPlaceholder
        self.isInline = isInline
        self.needLocation = needLocation
    }
}

