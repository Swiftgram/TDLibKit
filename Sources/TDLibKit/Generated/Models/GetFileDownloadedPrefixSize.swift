//
//  GetFileDownloadedPrefixSize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns file downloaded prefix size from a given offset
public struct GetFileDownloadedPrefixSize: Codable {

    /// Identifier of the file
    public let fileId: Int

    /// Offset from which downloaded prefix size should be calculated
    public let offset: Int


    public init(
        fileId: Int,
        offset: Int
    ) {
        self.fileId = fileId
        self.offset = offset
    }
}

