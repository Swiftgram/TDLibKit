//
//  StorageStatisticsByFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Contains the storage usage statistics for a specific file type
public struct StorageStatisticsByFileType: Codable, Equatable, Hashable {

    /// Total number of files
    public let count: Int

    /// File type
    public let fileType: FileType

    /// Total size of the files, in bytes
    public let size: Int64


    public init(
        count: Int,
        fileType: FileType,
        size: Int64
    ) {
        self.count = count
        self.fileType = fileType
        self.size = size
    }
}

