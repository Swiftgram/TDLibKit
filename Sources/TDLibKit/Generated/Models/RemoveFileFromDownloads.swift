//
//  RemoveFileFromDownloads.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Removes a file from the file download list
public struct RemoveFileFromDownloads: Codable, Equatable, Hashable {

    /// Pass true to delete the file from the TDLib file cache
    public let deleteFromCache: Bool?

    /// Identifier of the downloaded file
    public let fileId: Int?


    public init(
        deleteFromCache: Bool?,
        fileId: Int?
    ) {
        self.deleteFromCache = deleteFromCache
        self.fileId = fileId
    }
}

