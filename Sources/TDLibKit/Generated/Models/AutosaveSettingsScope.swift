//
//  AutosaveSettingsScope.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes scope of autosave settings
public indirect enum AutosaveSettingsScope: Codable, Equatable, Hashable {

    /// Autosave settings applied to all private chats without chat-specific settings
    case autosaveSettingsScopePrivateChats

    /// Autosave settings applied to all basic group and supergroup chats without chat-specific settings
    case autosaveSettingsScopeGroupChats

    /// Autosave settings applied to all channel chats without chat-specific settings
    case autosaveSettingsScopeChannelChats

    /// Autosave settings applied to a chat
    case autosaveSettingsScopeChat(AutosaveSettingsScopeChat)


    private enum Kind: String, Codable {
        case autosaveSettingsScopePrivateChats
        case autosaveSettingsScopeGroupChats
        case autosaveSettingsScopeChannelChats
        case autosaveSettingsScopeChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .autosaveSettingsScopePrivateChats:
            self = .autosaveSettingsScopePrivateChats
        case .autosaveSettingsScopeGroupChats:
            self = .autosaveSettingsScopeGroupChats
        case .autosaveSettingsScopeChannelChats:
            self = .autosaveSettingsScopeChannelChats
        case .autosaveSettingsScopeChat:
            let value = try AutosaveSettingsScopeChat(from: decoder)
            self = .autosaveSettingsScopeChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .autosaveSettingsScopePrivateChats:
            try container.encode(Kind.autosaveSettingsScopePrivateChats, forKey: .type)
        case .autosaveSettingsScopeGroupChats:
            try container.encode(Kind.autosaveSettingsScopeGroupChats, forKey: .type)
        case .autosaveSettingsScopeChannelChats:
            try container.encode(Kind.autosaveSettingsScopeChannelChats, forKey: .type)
        case .autosaveSettingsScopeChat(let value):
            try container.encode(Kind.autosaveSettingsScopeChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Autosave settings applied to a chat
public struct AutosaveSettingsScopeChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

