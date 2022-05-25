//
//  ChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c5dfa597
//  https://github.com/tdlib/td/tree/c5dfa597
//

import Foundation


/// Represents a filter of user chats
public struct ChatFilter: Codable, Equatable {

    /// True, if archived chats need to be excluded
    public let excludeArchived: Bool

    /// True, if muted chats need to be excluded
    public let excludeMuted: Bool

    /// True, if read chats need to be excluded
    public let excludeRead: Bool

    /// The chat identifiers of always excluded chats in the filtered chat list
    public let excludedChatIds: [Int64]

    /// The chosen icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".//-If empty, use getChatFilterDefaultIconName to get default icon name for the filter
    public let iconName: String

    /// True, if bots need to be included
    public let includeBots: Bool

    /// True, if channels need to be included
    public let includeChannels: Bool

    /// True, if contacts need to be included
    public let includeContacts: Bool

    /// True, if basic groups and supergroups need to be included
    public let includeGroups: Bool

    /// True, if non-contact users need to be included
    public let includeNonContacts: Bool

    /// The chat identifiers of always included chats in the filtered chat list
    public let includedChatIds: [Int64]

    /// The chat identifiers of pinned chats in the filtered chat list
    public let pinnedChatIds: [Int64]

    /// The title of the filter; 1-12 characters without line feeds
    public let title: String


    public init(
        excludeArchived: Bool,
        excludeMuted: Bool,
        excludeRead: Bool,
        excludedChatIds: [Int64],
        iconName: String,
        includeBots: Bool,
        includeChannels: Bool,
        includeContacts: Bool,
        includeGroups: Bool,
        includeNonContacts: Bool,
        includedChatIds: [Int64],
        pinnedChatIds: [Int64],
        title: String
    ) {
        self.excludeArchived = excludeArchived
        self.excludeMuted = excludeMuted
        self.excludeRead = excludeRead
        self.excludedChatIds = excludedChatIds
        self.iconName = iconName
        self.includeBots = includeBots
        self.includeChannels = includeChannels
        self.includeContacts = includeContacts
        self.includeGroups = includeGroups
        self.includeNonContacts = includeNonContacts
        self.includedChatIds = includedChatIds
        self.pinnedChatIds = pinnedChatIds
        self.title = title
    }
}

