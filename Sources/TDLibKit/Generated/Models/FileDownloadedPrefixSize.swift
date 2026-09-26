//
//  FileDownloadedPrefixSize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-fa8294b4
//  https://github.com/tdlib/td/tree/fa8294b4
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

