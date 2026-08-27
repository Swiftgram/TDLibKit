//
//  SearchMessagesChatTypeFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Represents a filter for type of the chats in which to search for messages
public indirect enum SearchMessagesChatTypeFilter: Codable, Equatable, Hashable {

    /// Returns only messages in private chats
    case searchMessagesChatTypeFilterPrivate

    /// Returns only messages in basic group and supergroup chats
    case searchMessagesChatTypeFilterGroup

    /// Returns only messages in channel chats
    case searchMessagesChatTypeFilterChannel

    /// Returns only messages in the specified community
    case searchMessagesChatTypeFilterCommunity(SearchMessagesChatTypeFilterCommunity)


    private enum Kind: String, Codable {
        case searchMessagesChatTypeFilterPrivate
        case searchMessagesChatTypeFilterGroup
        case searchMessagesChatTypeFilterChannel
        case searchMessagesChatTypeFilterCommunity
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .searchMessagesChatTypeFilterPrivate:
            self = .searchMessagesChatTypeFilterPrivate
        case .searchMessagesChatTypeFilterGroup:
            self = .searchMessagesChatTypeFilterGroup
        case .searchMessagesChatTypeFilterChannel:
            self = .searchMessagesChatTypeFilterChannel
        case .searchMessagesChatTypeFilterCommunity:
            let value = try SearchMessagesChatTypeFilterCommunity(from: decoder)
            self = .searchMessagesChatTypeFilterCommunity(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .searchMessagesChatTypeFilterPrivate:
            try container.encode(Kind.searchMessagesChatTypeFilterPrivate, forKey: .type)
        case .searchMessagesChatTypeFilterGroup:
            try container.encode(Kind.searchMessagesChatTypeFilterGroup, forKey: .type)
        case .searchMessagesChatTypeFilterChannel:
            try container.encode(Kind.searchMessagesChatTypeFilterChannel, forKey: .type)
        case .searchMessagesChatTypeFilterCommunity(let value):
            try container.encode(Kind.searchMessagesChatTypeFilterCommunity, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Returns only messages in the specified community
public struct SearchMessagesChatTypeFilterCommunity: Codable, Equatable, Hashable {

    /// Identifier of the community to search in
    public let communityId: Int64


    public init(communityId: Int64) {
        self.communityId = communityId
    }
}

