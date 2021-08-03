//
//  ChatType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Describes the type of a chat
public enum ChatType: Codable {

    /// An ordinary chat with a user
    case chatTypePrivate(ChatTypePrivate)

    /// A basic group (i.e., a chat with 0-200 other users)
    case chatTypeBasicGroup(ChatTypeBasicGroup)

    /// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
    case chatTypeSupergroup(ChatTypeSupergroup)

    /// A secret chat with a user
    case chatTypeSecret(ChatTypeSecret)


    private enum Kind: String, Codable {
        case chatTypePrivate
        case chatTypeBasicGroup
        case chatTypeSupergroup
        case chatTypeSecret
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatTypePrivate:
            let value = try ChatTypePrivate(from: decoder)
            self = .chatTypePrivate(value)
        case .chatTypeBasicGroup:
            let value = try ChatTypeBasicGroup(from: decoder)
            self = .chatTypeBasicGroup(value)
        case .chatTypeSupergroup:
            let value = try ChatTypeSupergroup(from: decoder)
            self = .chatTypeSupergroup(value)
        case .chatTypeSecret:
            let value = try ChatTypeSecret(from: decoder)
            self = .chatTypeSecret(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatTypePrivate(let value):
            try container.encode(Kind.chatTypePrivate, forKey: .type)
            try value.encode(to: encoder)
        case .chatTypeBasicGroup(let value):
            try container.encode(Kind.chatTypeBasicGroup, forKey: .type)
            try value.encode(to: encoder)
        case .chatTypeSupergroup(let value):
            try container.encode(Kind.chatTypeSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .chatTypeSecret(let value):
            try container.encode(Kind.chatTypeSecret, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An ordinary chat with a user
public struct ChatTypePrivate: Codable {

    /// User identifier
    public let userId: Int


    public init(userId: Int) {
        self.userId = userId
    }
}

/// A basic group (i.e., a chat with 0-200 other users)
public struct ChatTypeBasicGroup: Codable {

    /// Basic group identifier
    public let basicGroupId: Int


    public init(basicGroupId: Int) {
        self.basicGroupId = basicGroupId
    }
}

/// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
public struct ChatTypeSupergroup: Codable {

    /// True, if the supergroup is a channel
    public let isChannel: Bool

    /// Supergroup or channel identifier
    public let supergroupId: Int


    public init(
        isChannel: Bool,
        supergroupId: Int
    ) {
        self.isChannel = isChannel
        self.supergroupId = supergroupId
    }
}

/// A secret chat with a user
public struct ChatTypeSecret: Codable {

    /// Secret chat identifier
    public let secretChatId: Int

    /// User identifier of the secret chat peer
    public let userId: Int


    public init(
        secretChatId: Int,
        userId: Int
    ) {
        self.secretChatId = secretChatId
        self.userId = userId
    }
}

