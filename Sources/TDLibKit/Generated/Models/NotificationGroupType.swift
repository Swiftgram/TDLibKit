//
//  NotificationGroupType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the type of notifications in a notification group
public indirect enum NotificationGroupType: Codable, Equatable, Hashable {

    /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
    case notificationGroupTypeMessages

    /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
    case notificationGroupTypeMentions

    /// A group containing a notification of type notificationTypeNewSecretChat
    case notificationGroupTypeSecretChat

    /// A group containing notifications of type notificationTypeNewCall
    case notificationGroupTypeCalls


    private enum Kind: String, Codable {
        case notificationGroupTypeMessages
        case notificationGroupTypeMentions
        case notificationGroupTypeSecretChat
        case notificationGroupTypeCalls
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .notificationGroupTypeMessages:
            self = .notificationGroupTypeMessages
        case .notificationGroupTypeMentions:
            self = .notificationGroupTypeMentions
        case .notificationGroupTypeSecretChat:
            self = .notificationGroupTypeSecretChat
        case .notificationGroupTypeCalls:
            self = .notificationGroupTypeCalls
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .notificationGroupTypeMessages:
            try container.encode(Kind.notificationGroupTypeMessages, forKey: .type)
        case .notificationGroupTypeMentions:
            try container.encode(Kind.notificationGroupTypeMentions, forKey: .type)
        case .notificationGroupTypeSecretChat:
            try container.encode(Kind.notificationGroupTypeSecretChat, forKey: .type)
        case .notificationGroupTypeCalls:
            try container.encode(Kind.notificationGroupTypeCalls, forKey: .type)
        }
    }
}

