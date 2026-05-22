//
//  ReadChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Traverses all chats in a chat list and marks all messages in the chats as read
public struct ReadChatList: Codable, Equatable, Hashable {

    /// Chat list in which to mark all chats as read
    public let chatList: ChatList?


    public init(chatList: ChatList?) {
        self.chatList = chatList
    }
}

