//
//  GetChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats and updates processing instead to maintain chat lists in a consistent state
public struct GetChats: Codable, Equatable, Hashable {

    /// The chat list in which to return chats; pass null to get chats from the main chat list
    public let chatList: ChatList?

    /// The maximum number of chats to be returned
    public let limit: Int?


    public init(
        chatList: ChatList?,
        limit: Int?
    ) {
        self.chatList = chatList
        self.limit = limit
    }
}

