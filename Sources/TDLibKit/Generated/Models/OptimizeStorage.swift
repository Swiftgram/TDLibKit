//
//  OptimizeStorage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted
public struct OptimizeStorage: Codable, Equatable, Hashable {

    /// If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos)
    public let chatIds: [Int64]?

    /// Same as in getStorageStatistics. Affects only returned statistics
    public let chatLimit: Int?

    /// Limit on the total number of files after deletion. Pass -1 to use the default limit
    public let count: Int?

    /// If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos)
    public let excludeChatIds: [Int64]?

    /// If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted
    public let fileTypes: [FileType]?

    /// The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value
    public let immunityDelay: Int?

    /// Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics
    public let returnDeletedFileStatistics: Bool?

    /// Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit
    public let size: Int64?

    /// Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit
    public let ttl: Int?


    public init(
        chatIds: [Int64]?,
        chatLimit: Int?,
        count: Int?,
        excludeChatIds: [Int64]?,
        fileTypes: [FileType]?,
        immunityDelay: Int?,
        returnDeletedFileStatistics: Bool?,
        size: Int64?,
        ttl: Int?
    ) {
        self.chatIds = chatIds
        self.chatLimit = chatLimit
        self.count = count
        self.excludeChatIds = excludeChatIds
        self.fileTypes = fileTypes
        self.immunityDelay = immunityDelay
        self.returnDeletedFileStatistics = returnDeletedFileStatistics
        self.size = size
        self.ttl = ttl
    }
}

