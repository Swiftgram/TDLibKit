//
//  ChatMembersFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Specifies the kind of chat members to return in searchChatMembers
public indirect enum ChatMembersFilter: Codable, Equatable, Hashable {

    /// Returns contacts of the user
    case chatMembersFilterContacts

    /// Returns the owner and administrators
    case chatMembersFilterAdministrators

    /// Returns all chat members, including restricted chat members
    case chatMembersFilterMembers

    /// Returns users which can be mentioned in the chat
    case chatMembersFilterMention(ChatMembersFilterMention)

    /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
    case chatMembersFilterRestricted

    /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
    case chatMembersFilterBanned

    /// Returns bot members of the chat
    case chatMembersFilterBots


    private enum Kind: String, Codable {
        case chatMembersFilterContacts
        case chatMembersFilterAdministrators
        case chatMembersFilterMembers
        case chatMembersFilterMention
        case chatMembersFilterRestricted
        case chatMembersFilterBanned
        case chatMembersFilterBots
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatMembersFilterContacts:
            self = .chatMembersFilterContacts
        case .chatMembersFilterAdministrators:
            self = .chatMembersFilterAdministrators
        case .chatMembersFilterMembers:
            self = .chatMembersFilterMembers
        case .chatMembersFilterMention:
            let value = try ChatMembersFilterMention(from: decoder)
            self = .chatMembersFilterMention(value)
        case .chatMembersFilterRestricted:
            self = .chatMembersFilterRestricted
        case .chatMembersFilterBanned:
            self = .chatMembersFilterBanned
        case .chatMembersFilterBots:
            self = .chatMembersFilterBots
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatMembersFilterContacts:
            try container.encode(Kind.chatMembersFilterContacts, forKey: .type)
        case .chatMembersFilterAdministrators:
            try container.encode(Kind.chatMembersFilterAdministrators, forKey: .type)
        case .chatMembersFilterMembers:
            try container.encode(Kind.chatMembersFilterMembers, forKey: .type)
        case .chatMembersFilterMention(let value):
            try container.encode(Kind.chatMembersFilterMention, forKey: .type)
            try value.encode(to: encoder)
        case .chatMembersFilterRestricted:
            try container.encode(Kind.chatMembersFilterRestricted, forKey: .type)
        case .chatMembersFilterBanned:
            try container.encode(Kind.chatMembersFilterBanned, forKey: .type)
        case .chatMembersFilterBots:
            try container.encode(Kind.chatMembersFilterBots, forKey: .type)
        }
    }
}

/// Returns users which can be mentioned in the chat
public struct ChatMembersFilterMention: Codable, Equatable, Hashable {

    /// If non-zero, the identifier of the current message thread
    public let messageThreadId: Int64


    public init(messageThreadId: Int64) {
        self.messageThreadId = messageThreadId
    }
}

