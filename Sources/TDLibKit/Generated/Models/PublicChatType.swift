//
//  PublicChatType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a type of public chats
public indirect enum PublicChatType: Codable, Equatable, Hashable {

    /// The chat is public, because it has an active username
    case publicChatTypeHasUsername

    /// The chat is public, because it is a location-based supergroup
    case publicChatTypeIsLocationBased


    private enum Kind: String, Codable {
        case publicChatTypeHasUsername
        case publicChatTypeIsLocationBased
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .publicChatTypeHasUsername:
            self = .publicChatTypeHasUsername
        case .publicChatTypeIsLocationBased:
            self = .publicChatTypeIsLocationBased
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .publicChatTypeHasUsername:
            try container.encode(Kind.publicChatTypeHasUsername, forKey: .type)
        case .publicChatTypeIsLocationBased:
            try container.encode(Kind.publicChatTypeIsLocationBased, forKey: .type)
        }
    }
}

