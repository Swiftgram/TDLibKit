//
//  ReadChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-fe734fd6
//  https://github.com/tdlib/td/tree/fe734fd6
//

import Foundation


/// Traverse all chats in a chat list and marks all messages in the chats as read
public struct ReadChatList: Codable, Equatable {

    /// Chat list in which to mark all chats as read
    public let chatList: ChatList?


    public init(chatList: ChatList?) {
        self.chatList = chatList
    }
}

