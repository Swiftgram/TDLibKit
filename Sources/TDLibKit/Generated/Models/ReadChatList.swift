//
//  ReadChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

