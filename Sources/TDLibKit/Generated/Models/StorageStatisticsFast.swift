//
//  StorageStatisticsFast.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Contains approximate storage usage statistics, excluding files of unknown file type
public struct StorageStatisticsFast: Codable {

    /// Size of the database
    public let databaseSize: Int64

    /// Approximate number of files
    public let fileCount: Int

    /// Approximate total size of files
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

