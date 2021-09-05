//
//  GetChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats instead to maintain chat lists
public struct GetChats: Codable {

    /// The chat list in which to return chats
    public let chatList: ChatList

    /// The maximum number of chats to be returned
    public let limit: Int


    public init(
        chatList: ChatList,
        limit: Int
    ) {
        self.chatList = chatList
        self.limit = limit
    }
}

