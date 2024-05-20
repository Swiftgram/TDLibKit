//
//  TopChatCategory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the categories of chats for which a list of frequently used chats can be retrieved
public indirect enum TopChatCategory: Codable, Equatable, Hashable {

    /// A category containing frequently used private chats with non-bot users
    case topChatCategoryUsers

    /// A category containing frequently used private chats with bot users
    case topChatCategoryBots

    /// A category containing frequently used basic groups and supergroups
    case topChatCategoryGroups

    /// A category containing frequently used channels
    case topChatCategoryChannels

    /// A category containing frequently used chats with inline bots sorted by their usage in inline mode
    case topChatCategoryInlineBots

    /// A category containing frequently used chats used for calls
    case topChatCategoryCalls

    /// A category containing frequently used chats used to forward messages
    case topChatCategoryForwardChats


    private enum Kind: String, Codable {
        case topChatCategoryUsers
        case topChatCategoryBots
        case topChatCategoryGroups
        case topChatCategoryChannels
        case topChatCategoryInlineBots
        case topChatCategoryCalls
        case topChatCategoryForwardChats
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .topChatCategoryUsers:
            self = .topChatCategoryUsers
        case .topChatCategoryBots:
            self = .topChatCategoryBots
        case .topChatCategoryGroups:
            self = .topChatCategoryGroups
        case .topChatCategoryChannels:
            self = .topChatCategoryChannels
        case .topChatCategoryInlineBots:
            self = .topChatCategoryInlineBots
        case .topChatCategoryCalls:
            self = .topChatCategoryCalls
        case .topChatCategoryForwardChats:
            self = .topChatCategoryForwardChats
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .topChatCategoryUsers:
            try container.encode(Kind.topChatCategoryUsers, forKey: .type)
        case .topChatCategoryBots:
            try container.encode(Kind.topChatCategoryBots, forKey: .type)
        case .topChatCategoryGroups:
            try container.encode(Kind.topChatCategoryGroups, forKey: .type)
        case .topChatCategoryChannels:
            try container.encode(Kind.topChatCategoryChannels, forKey: .type)
        case .topChatCategoryInlineBots:
            try container.encode(Kind.topChatCategoryInlineBots, forKey: .type)
        case .topChatCategoryCalls:
            try container.encode(Kind.topChatCategoryCalls, forKey: .type)
        case .topChatCategoryForwardChats:
            try container.encode(Kind.topChatCategoryForwardChats, forKey: .type)
        }
    }
}

