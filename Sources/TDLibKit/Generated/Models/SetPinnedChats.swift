//
//  SetPinnedChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Changes the order of pinned chats
public struct SetPinnedChats: Codable, Equatable, Hashable {

    /// The new list of pinned chats
    public let chatIds: [Int64]?

    /// Chat list in which to change the order of pinned chats
    public let chatList: ChatList?


    public init(
        chatIds: [Int64]?,
        chatList: ChatList?
    ) {
        self.chatIds = chatIds
        self.chatList = chatList
    }
}

