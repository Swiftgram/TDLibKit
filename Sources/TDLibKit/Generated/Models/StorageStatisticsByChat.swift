//
//  StorageStatisticsByChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains the storage usage statistics for a specific chat
public struct StorageStatisticsByChat: Codable, Equatable, Hashable {

    /// Statistics split by file types
    public let byFileType: [StorageStatisticsByFileType]

    /// Chat identifier; 0 if none
    public let chatId: Int64

    /// Total number of files in the chat
    public let count: Int

    /// Total size of the files in the chat, in bytes
    public let size: Int64


    public init(
        byFileType: [StorageStatisticsByFileType],
        chatId: Int64,
        count: Int,
        size: Int64
    ) {
        self.byFileType = byFileType
        self.chatId = chatId
        self.count = count
        self.size = size
    }
}

