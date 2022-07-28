//
//  MessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a file with messages exported from another app
public enum MessageFileType: Codable, Equatable {

    /// The messages was exported from a private chat
    case messageFileTypePrivate(MessageFileTypePrivate)

    /// The messages was exported from a group chat
    case messageFileTypeGroup(MessageFileTypeGroup)

    /// The messages was exported from a chat of unknown type
    case messageFileTypeUnknown


    private enum Kind: String, Codable {
        case messageFileTypePrivate
        case messageFileTypeGroup
        case messageFileTypeUnknown
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageFileTypePrivate:
            let value = try MessageFileTypePrivate(from: decoder)
            self = .messageFileTypePrivate(value)
        case .messageFileTypeGroup:
            let value = try MessageFileTypeGroup(from: decoder)
            self = .messageFileTypeGroup(value)
        case .messageFileTypeUnknown:
            self = .messageFileTypeUnknown
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageFileTypePrivate(let value):
            try container.encode(Kind.messageFileTypePrivate, forKey: .type)
            try value.encode(to: encoder)
        case .messageFileTypeGroup(let value):
            try container.encode(Kind.messageFileTypeGroup, forKey: .type)
            try value.encode(to: encoder)
        case .messageFileTypeUnknown:
            try container.encode(Kind.messageFileTypeUnknown, forKey: .type)
        }
    }
}

/// The messages was exported from a private chat
public struct MessageFileTypePrivate: Codable, Equatable {

    /// Name of the other party; may be empty if unrecognized
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// The messages was exported from a group chat
public struct MessageFileTypeGroup: Codable, Equatable {

    /// Title of the group chat; may be empty if unrecognized
    public let title: String


    public init(title: String) {
        self.title = title
    }
}

