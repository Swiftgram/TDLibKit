//
//  SavedMessagesTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Contains information about a Saved Messages topic
public enum SavedMessagesTopic: Codable, Equatable, Hashable {

    /// Topic containing messages sent by the current user of forwarded from an unknown chat
    case savedMessagesTopicMyNotes

    /// Topic containing messages forwarded from a user with hidden privacy
    case savedMessagesTopicAuthorHidden

    /// Topic containing messages forwarded from a specific chat
    case savedMessagesTopicSavedFromChat(SavedMessagesTopicSavedFromChat)


    private enum Kind: String, Codable {
        case savedMessagesTopicMyNotes
        case savedMessagesTopicAuthorHidden
        case savedMessagesTopicSavedFromChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .savedMessagesTopicMyNotes:
            self = .savedMessagesTopicMyNotes
        case .savedMessagesTopicAuthorHidden:
            self = .savedMessagesTopicAuthorHidden
        case .savedMessagesTopicSavedFromChat:
            let value = try SavedMessagesTopicSavedFromChat(from: decoder)
            self = .savedMessagesTopicSavedFromChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .savedMessagesTopicMyNotes:
            try container.encode(Kind.savedMessagesTopicMyNotes, forKey: .type)
        case .savedMessagesTopicAuthorHidden:
            try container.encode(Kind.savedMessagesTopicAuthorHidden, forKey: .type)
        case .savedMessagesTopicSavedFromChat(let value):
            try container.encode(Kind.savedMessagesTopicSavedFromChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Topic containing messages forwarded from a specific chat
public struct SavedMessagesTopicSavedFromChat: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

