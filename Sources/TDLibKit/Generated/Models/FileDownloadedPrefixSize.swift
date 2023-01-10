//
//  FileDownloadedPrefixSize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
//

import Foundation


/// Contains size of downloaded prefix of a file
public struct FileDownloadedPrefixSize: Codable, Equatable {

    /// The prefix size, in bytes
    public let size: Int64


    public init(size: Int64) {
        self.size = size
    }
}

