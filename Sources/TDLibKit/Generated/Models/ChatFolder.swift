//
//  ChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a folder for user chats
public struct ChatFolder: Codable, Equatable, Hashable {

    /// The identifier of the chosen color for the chat folder icon; from -1 to 6. If -1, then color is disabled. Can't be changed if folder tags are disabled or the current user doesn't have Telegram Premium subscription
    public let colorId: Int

    /// True, if archived chats need to be excluded
    public let excludeArchived: Bool

    /// True, if muted chats need to be excluded
    public let excludeMuted: Bool

    /// True, if read chats need to be excluded
    public let excludeRead: Bool

    /// The chat identifiers of always excluded chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") always excluded non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
    public let excludedChatIds: [Int64]

    /// The chosen icon for the chat folder; may be null. If null, use getChatFolderDefaultIconName to get default icon name for the folder
    public let icon: ChatFolderIcon?

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

    /// The chat identifiers of always included chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
    public let includedChatIds: [Int64]

    /// True, if at least one link has been created for the folder
    public let isShareable: Bool

    /// The chat identifiers of pinned chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
    public let pinnedChatIds: [Int64]

    /// The title of the folder; 1-12 characters without line feeds
    public let title: String


    public init(
        colorId: Int,
        excludeArchived: Bool,
        excludeMuted: Bool,
        excludeRead: Bool,
        excludedChatIds: [Int64],
        icon: ChatFolderIcon?,
        includeBots: Bool,
        includeChannels: Bool,
        includeContacts: Bool,
        includeGroups: Bool,
        includeNonContacts: Bool,
        includedChatIds: [Int64],
        isShareable: Bool,
        pinnedChatIds: [Int64],
        title: String
    ) {
        self.colorId = colorId
        self.excludeArchived = excludeArchived
        self.excludeMuted = excludeMuted
        self.excludeRead = excludeRead
        self.excludedChatIds = excludedChatIds
        self.icon = icon
        self.includeBots = includeBots
        self.includeChannels = includeChannels
        self.includeContacts = includeContacts
        self.includeGroups = includeGroups
        self.includeNonContacts = includeNonContacts
        self.includedChatIds = includedChatIds
        self.isShareable = isShareable
        self.pinnedChatIds = pinnedChatIds
        self.title = title
    }
}

