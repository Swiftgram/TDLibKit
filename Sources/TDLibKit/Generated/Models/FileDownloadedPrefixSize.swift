//
//  FileDownloadedPrefixSize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains size of downloaded prefix of a file
public struct FileDownloadedPrefixSize: Codable, Equatable, Hashable {

    /// The prefix size, in bytes
    public let size: Int64


    public init(size: Int64) {
        self.size = size
    }
}

