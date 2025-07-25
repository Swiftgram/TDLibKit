//
//  StorageStatisticsByChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

