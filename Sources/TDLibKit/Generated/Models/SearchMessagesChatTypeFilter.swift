//
//  SearchMessagesChatTypeFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Represents a filter for type of the chats in which to search messages
public indirect enum SearchMessagesChatTypeFilter: Codable, Equatable, Hashable {

    /// Returns only messages in private chats
    case searchMessagesChatTypeFilterPrivate

    /// Returns only messages in basic group and supergroup chats
    case searchMessagesChatTypeFilterGroup

    /// Returns only messages in channel chats
    case searchMessagesChatTypeFilterChannel


    private enum Kind: String, Codable {
        case searchMessagesChatTypeFilterPrivate
        case searchMessagesChatTypeFilterGroup
        case searchMessagesChatTypeFilterChannel
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
        }
    }
}

