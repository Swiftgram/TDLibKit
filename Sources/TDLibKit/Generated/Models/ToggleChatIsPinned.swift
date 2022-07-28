//
//  ToggleChatIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/archive chat list. The limit can be increased with Telegram Premium
public struct ToggleChatIsPinned: Codable, Equatable {

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

