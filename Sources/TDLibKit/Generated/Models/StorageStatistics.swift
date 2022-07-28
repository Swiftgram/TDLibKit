//
//  StorageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains the exact storage usage statistics split by chats and file type
public struct StorageStatistics: Codable, Equatable {

    /// Statistics split by chats
    public let byChat: [StorageStatisticsByChat]

    /// Total number of files
    public let count: Int

    /// Total size of files, in bytes
    public let size: Int64


    public init(
        byChat: [StorageStatisticsByChat],
        count: Int,
        size: Int64
    ) {
        self.byChat = byChat
        self.count = count
        self.size = size
    }
}

