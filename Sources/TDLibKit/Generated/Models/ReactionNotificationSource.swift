//
//  ReactionNotificationSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes sources of reactions for which notifications will be shown
public indirect enum ReactionNotificationSource: Codable, Equatable, Hashable {

    /// Notifications for reactions are disabled
    case reactionNotificationSourceNone

    /// Notifications for reactions are shown only for reactions from contacts
    case reactionNotificationSourceContacts

    /// Notifications for reactions are shown for all reactions
    case reactionNotificationSourceAll


    private enum Kind: String, Codable {
        case reactionNotificationSourceNone
        case reactionNotificationSourceContacts
        case reactionNotificationSourceAll
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reactionNotificationSourceNone:
            self = .reactionNotificationSourceNone
        case .reactionNotificationSourceContacts:
            self = .reactionNotificationSourceContacts
        case .reactionNotificationSourceAll:
            self = .reactionNotificationSourceAll
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reactionNotificationSourceNone:
            try container.encode(Kind.reactionNotificationSourceNone, forKey: .type)
        case .reactionNotificationSourceContacts:
            try container.encode(Kind.reactionNotificationSourceContacts, forKey: .type)
        case .reactionNotificationSourceAll:
            try container.encode(Kind.reactionNotificationSourceAll, forKey: .type)
        }
    }
}

