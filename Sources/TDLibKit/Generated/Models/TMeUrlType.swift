//
//  TMeUrlType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the type of URL linking to an internal Telegram entity
public indirect enum TMeUrlType: Codable, Equatable, Hashable {

    /// A URL linking to a user
    case tMeUrlTypeUser(TMeUrlTypeUser)

    /// A URL linking to a public supergroup or channel
    case tMeUrlTypeSupergroup(TMeUrlTypeSupergroup)

    /// A chat invite link
    case tMeUrlTypeChatInvite(TMeUrlTypeChatInvite)

    /// A URL linking to a sticker set
    case tMeUrlTypeStickerSet(TMeUrlTypeStickerSet)


    private enum Kind: String, Codable {
        case tMeUrlTypeUser
        case tMeUrlTypeSupergroup
        case tMeUrlTypeChatInvite
        case tMeUrlTypeStickerSet
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tMeUrlTypeUser:
            let value = try TMeUrlTypeUser(from: decoder)
            self = .tMeUrlTypeUser(value)
        case .tMeUrlTypeSupergroup:
            let value = try TMeUrlTypeSupergroup(from: decoder)
            self = .tMeUrlTypeSupergroup(value)
        case .tMeUrlTypeChatInvite:
            let value = try TMeUrlTypeChatInvite(from: decoder)
            self = .tMeUrlTypeChatInvite(value)
        case .tMeUrlTypeStickerSet:
            let value = try TMeUrlTypeStickerSet(from: decoder)
            self = .tMeUrlTypeStickerSet(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tMeUrlTypeUser(let value):
            try container.encode(Kind.tMeUrlTypeUser, forKey: .type)
            try value.encode(to: encoder)
        case .tMeUrlTypeSupergroup(let value):
            try container.encode(Kind.tMeUrlTypeSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .tMeUrlTypeChatInvite(let value):
            try container.encode(Kind.tMeUrlTypeChatInvite, forKey: .type)
            try value.encode(to: encoder)
        case .tMeUrlTypeStickerSet(let value):
            try container.encode(Kind.tMeUrlTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A URL linking to a user
public struct TMeUrlTypeUser: Codable, Equatable, Hashable {

    /// Identifier of the user
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// A URL linking to a public supergroup or channel
public struct TMeUrlTypeSupergroup: Codable, Equatable, Hashable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64


    public init(supergroupId: Int64) {
        self.supergroupId = supergroupId
    }
}

/// A chat invite link
public struct TMeUrlTypeChatInvite: Codable, Equatable, Hashable {

    /// Information about the chat invite link
    public let info: ChatInviteLinkInfo


    public init(info: ChatInviteLinkInfo) {
        self.info = info
    }
}

/// A URL linking to a sticker set
public struct TMeUrlTypeStickerSet: Codable, Equatable, Hashable {

    /// Identifier of the sticker set
    public let stickerSetId: TdInt64


    public init(stickerSetId: TdInt64) {
        self.stickerSetId = stickerSetId
    }
}

