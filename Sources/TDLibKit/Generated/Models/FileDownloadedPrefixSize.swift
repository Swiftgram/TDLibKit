//
//  FileDownloadedPrefixSize.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
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

