//
//  GetChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns an ordered list of chats in a chat list. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 == 2^63 - 1). For optimal performance the number of returned chats is chosen by the library
public struct GetChats: Codable {

    /// The chat list in which to return chats
    public let chatList: ChatList

    /// The maximum number of chats to be returned. It is possible that fewer chats than the limit are returned even if the end of the list is not reached
    public let limit: Int

    /// Chat identifier to return chats from
    public let offsetChatId: Int64

    /// Chat order to return chats from
    public let offsetOrder: TdInt64


    public init(
        chatList: ChatList,
        limit: Int,
        offsetChatId: Int64,
        offsetOrder: TdInt64
    ) {
        self.chatList = chatList
        self.limit = limit
        self.offsetChatId = offsetChatId
        self.offsetOrder = offsetOrder
    }
}

