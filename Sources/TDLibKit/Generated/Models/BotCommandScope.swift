//
//  BotCommandScope.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the scope to which bot commands are relevant
public indirect enum BotCommandScope: Codable, Equatable, Hashable {

    /// A scope covering all users
    case botCommandScopeDefault

    /// A scope covering all private chats
    case botCommandScopeAllPrivateChats

    /// A scope covering all group and supergroup chats
    case botCommandScopeAllGroupChats

    /// A scope covering all group and supergroup chat administrators
    case botCommandScopeAllChatAdministrators

    /// A scope covering all members of a chat
    case botCommandScopeChat(BotCommandScopeChat)

    /// A scope covering all administrators of a chat
    case botCommandScopeChatAdministrators(BotCommandScopeChatAdministrators)

    /// A scope covering a member of a chat
    case botCommandScopeChatMember(BotCommandScopeChatMember)


    private enum Kind: String, Codable {
        case botCommandScopeDefault
        case botCommandScopeAllPrivateChats
        case botCommandScopeAllGroupChats
        case botCommandScopeAllChatAdministrators
        case botCommandScopeChat
        case botCommandScopeChatAdministrators
        case botCommandScopeChatMember
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .botCommandScopeDefault:
            self = .botCommandScopeDefault
        case .botCommandScopeAllPrivateChats:
            self = .botCommandScopeAllPrivateChats
        case .botCommandScopeAllGroupChats:
            self = .botCommandScopeAllGroupChats
        case .botCommandScopeAllChatAdministrators:
            self = .botCommandScopeAllChatAdministrators
        case .botCommandScopeChat:
            let value = try BotCommandScopeChat(from: decoder)
            self = .botCommandScopeChat(value)
        case .botCommandScopeChatAdministrators:
            let value = try BotCommandScopeChatAdministrators(from: decoder)
            self = .botCommandScopeChatAdministrators(value)
        case .botCommandScopeChatMember:
            let value = try BotCommandScopeChatMember(from: decoder)
            self = .botCommandScopeChatMember(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .botCommandScopeDefault:
            try container.encode(Kind.botCommandScopeDefault, forKey: .type)
        case .botCommandScopeAllPrivateChats:
            try container.encode(Kind.botCommandScopeAllPrivateChats, forKey: .type)
        case .botCommandScopeAllGroupChats:
            try container.encode(Kind.botCommandScopeAllGroupChats, forKey: .type)
        case .botCommandScopeAllChatAdministrators:
            try container.encode(Kind.botCommandScopeAllChatAdministrators, forKey: .type)
        case .botCommandScopeChat(let value):
            try container.encode(Kind.botCommandScopeChat, forKey: .type)
            try value.encode(to: encoder)
        case .botCommandScopeChatAdministrators(let value):
            try container.encode(Kind.botCommandScopeChatAdministrators, forKey: .type)
            try value.encode(to: encoder)
        case .botCommandScopeChatMember(let value):
            try container.encode(Kind.botCommandScopeChatMember, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A scope covering all members of a chat
public struct BotCommandScopeChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// A scope covering all administrators of a chat
public struct BotCommandScopeChatAdministrators: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// A scope covering a member of a chat
public struct BotCommandScopeChatMember: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier
    public let userId: Int64


    public init(
        chatId: Int64,
        userId: Int64
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

