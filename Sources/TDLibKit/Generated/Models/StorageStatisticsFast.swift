//
//  StorageStatisticsFast.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains approximate storage usage statistics, excluding files of unknown file type
public struct StorageStatisticsFast: Codable, Equatable, Hashable {

    /// Size of the database
    public let databaseSize: Int64

    /// Approximate number of files
    public let fileCount: Int

    /// Approximate total size of files, in bytes
    public let filesSize: Int64

    /// Size of the language pack database
    public let languagePackDatabaseSize: Int64

    /// Size of the TDLib internal log
    public let logSize: Int64


    public init(
        databaseSize: Int64,
        fileCount: Int,
        filesSize: Int64,
        languagePackDatabaseSize: Int64,
        logSize: Int64
    ) {
        self.databaseSize = databaseSize
        self.fileCount = fileCount
        self.filesSize = filesSize
        self.languagePackDatabaseSize = languagePackDatabaseSize
        self.logSize = logSize
    }
}

