//
//  SearchChatTypeFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-062f2605
//  https://github.com/tdlib/td/tree/062f2605
//

import Foundation


/// Represents a filter for type of the chats to search for
public indirect enum SearchChatTypeFilter: Codable, Equatable, Hashable {

    /// Returns only private chats with bots
    case searchChatTypeFilterBot

    /// Returns only channel chats
    case searchChatTypeFilterChannel


    private enum Kind: String, Codable {
        case searchChatTypeFilterBot
        case searchChatTypeFilterChannel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .searchChatTypeFilterBot:
            self = .searchChatTypeFilterBot
        case .searchChatTypeFilterChannel:
            self = .searchChatTypeFilterChannel
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .searchChatTypeFilterBot:
            try container.encode(Kind.searchChatTypeFilterBot, forKey: .type)
        case .searchChatTypeFilterChannel:
            try container.encode(Kind.searchChatTypeFilterChannel, forKey: .type)
        }
    }
}

