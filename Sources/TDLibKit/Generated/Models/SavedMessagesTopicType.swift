//
//  SavedMessagesTopicType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of Saved Messages topic
public indirect enum SavedMessagesTopicType: Codable, Equatable, Hashable {

    /// Topic containing messages sent by the current user of forwarded from an unknown chat
    case savedMessagesTopicTypeMyNotes

    /// Topic containing messages forwarded from a user with hidden privacy
    case savedMessagesTopicTypeAuthorHidden

    /// Topic containing messages forwarded from a specific chat
    case savedMessagesTopicTypeSavedFromChat(SavedMessagesTopicTypeSavedFromChat)


    private enum Kind: String, Codable {
        case savedMessagesTopicTypeMyNotes
        case savedMessagesTopicTypeAuthorHidden
        case savedMessagesTopicTypeSavedFromChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .savedMessagesTopicTypeMyNotes:
            self = .savedMessagesTopicTypeMyNotes
        case .savedMessagesTopicTypeAuthorHidden:
            self = .savedMessagesTopicTypeAuthorHidden
        case .savedMessagesTopicTypeSavedFromChat:
            let value = try SavedMessagesTopicTypeSavedFromChat(from: decoder)
            self = .savedMessagesTopicTypeSavedFromChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .savedMessagesTopicTypeMyNotes:
            try container.encode(Kind.savedMessagesTopicTypeMyNotes, forKey: .type)
        case .savedMessagesTopicTypeAuthorHidden:
            try container.encode(Kind.savedMessagesTopicTypeAuthorHidden, forKey: .type)
        case .savedMessagesTopicTypeSavedFromChat(let value):
            try container.encode(Kind.savedMessagesTopicTypeSavedFromChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Topic containing messages forwarded from a specific chat
public struct SavedMessagesTopicTypeSavedFromChat: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

