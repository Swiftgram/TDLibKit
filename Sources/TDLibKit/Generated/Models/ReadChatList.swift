//
//  ReadChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

