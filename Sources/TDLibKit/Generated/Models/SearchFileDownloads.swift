//
//  SearchFileDownloads.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for files in the file download list or recently downloaded files from the list
public struct SearchFileDownloads: Codable, Equatable, Hashable {

    /// The maximum number of files to be returned
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to search only for active downloads, including paused
    public let onlyActive: Bool?

    /// Pass true to search only for completed downloads
    public let onlyCompleted: Bool?

    /// Query to search for; may be empty to return all downloaded files
    public let query: String?


    public init(
        limit: Int?,
        offset: String?,
        onlyActive: Bool?,
        onlyCompleted: Bool?,
        query: String?
    ) {
        self.limit = limit
        self.offset = offset
        self.onlyActive = onlyActive
        self.onlyCompleted = onlyCompleted
        self.query = query
    }
}

