//
//  ToggleChatIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the pinned state of a chat. There can be up to getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/archive chat list. The limit can be increased with Telegram Premium
public struct ToggleChatIsPinned: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Chat list in which to change the pinned state of the chat
    public let chatList: ChatList?

    /// Pass true to pin the chat; pass false to unpin it
    public let isPinned: Bool?


    public init(
        chatId: Int64?,
        chatList: ChatList?,
        isPinned: Bool?
    ) {
        self.chatId = chatId
        self.chatList = chatList
        self.isPinned = isPinned
    }
}

