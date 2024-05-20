//
//  MessageReadDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes read date of a recent outgoing message in a private chat
public indirect enum MessageReadDate: Codable, Equatable, Hashable {

    /// Contains read date of the message
    case messageReadDateRead(MessageReadDateRead)

    /// The message is unread yet
    case messageReadDateUnread

    /// The message is too old to get read date
    case messageReadDateTooOld

    /// The read date is unknown due to privacy settings of the other user
    case messageReadDateUserPrivacyRestricted

    /// The read date is unknown due to privacy settings of the current user, but will be known if the user subscribes to Telegram Premium
    case messageReadDateMyPrivacyRestricted


    private enum Kind: String, Codable {
        case messageReadDateRead
        case messageReadDateUnread
        case messageReadDateTooOld
        case messageReadDateUserPrivacyRestricted
        case messageReadDateMyPrivacyRestricted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageReadDateRead:
            let value = try MessageReadDateRead(from: decoder)
            self = .messageReadDateRead(value)
        case .messageReadDateUnread:
            self = .messageReadDateUnread
        case .messageReadDateTooOld:
            self = .messageReadDateTooOld
        case .messageReadDateUserPrivacyRestricted:
            self = .messageReadDateUserPrivacyRestricted
        case .messageReadDateMyPrivacyRestricted:
            self = .messageReadDateMyPrivacyRestricted
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageReadDateRead(let value):
            try container.encode(Kind.messageReadDateRead, forKey: .type)
            try value.encode(to: encoder)
        case .messageReadDateUnread:
            try container.encode(Kind.messageReadDateUnread, forKey: .type)
        case .messageReadDateTooOld:
            try container.encode(Kind.messageReadDateTooOld, forKey: .type)
        case .messageReadDateUserPrivacyRestricted:
            try container.encode(Kind.messageReadDateUserPrivacyRestricted, forKey: .type)
        case .messageReadDateMyPrivacyRestricted:
            try container.encode(Kind.messageReadDateMyPrivacyRestricted, forKey: .type)
        }
    }
}

/// Contains read date of the message
public struct MessageReadDateRead: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the message was read by the other user
    public let readDate: Int


    public init(readDate: Int) {
        self.readDate = readDate
    }
}

