//
//  RemoveAllFilesFromDownloads.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Removes all files from the file download list
public struct RemoveAllFilesFromDownloads: Codable, Equatable, Hashable {

    /// Pass true to delete the file from the TDLib file cache
    public let deleteFromCache: Bool?

    /// Pass true to remove only active downloads, including paused
    public let onlyActive: Bool?

    /// Pass true to remove only completed downloads
    public let onlyCompleted: Bool?


    public init(
        deleteFromCache: Bool?,
        onlyActive: Bool?,
        onlyCompleted: Bool?
    ) {
        self.deleteFromCache = deleteFromCache
        self.onlyActive = onlyActive
        self.onlyCompleted = onlyCompleted
    }
}

