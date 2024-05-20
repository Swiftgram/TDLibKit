//
//  ArchiveChatListSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains settings for automatic moving of chats to and from the Archive chat lists
public struct ArchiveChatListSettings: Codable, Equatable, Hashable {

    /// True, if new chats from non-contacts will be automatically archived and muted. Can be set to true only if the option "can_archive_and_mute_new_chats_from_unknown_users" is true
    public let archiveAndMuteNewChatsFromUnknownUsers: Bool

    /// True, if unmuted chats, that are always included or pinned in a folder, will be kept in the Archive chat list when they get a new message. Ignored if keep_unmuted_chats_archived == true
    public let keepChatsFromFoldersArchived: Bool

    /// True, if unmuted chats will be kept in the Archive chat list when they get a new message
    public let keepUnmutedChatsArchived: Bool


    public init(
        archiveAndMuteNewChatsFromUnknownUsers: Bool,
        keepChatsFromFoldersArchived: Bool,
        keepUnmutedChatsArchived: Bool
    ) {
        self.archiveAndMuteNewChatsFromUnknownUsers = archiveAndMuteNewChatsFromUnknownUsers
        self.keepChatsFromFoldersArchived = keepChatsFromFoldersArchived
        self.keepUnmutedChatsArchived = keepUnmutedChatsArchived
    }
}

