//
//  GetStorageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Returns storage usage statistics. Can be called before authorization
public struct GetStorageStatistics: Codable, Equatable, Hashable {

    /// The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
    public let chatLimit: Int?


    public init(chatLimit: Int?) {
        self.chatLimit = chatLimit
    }
}

