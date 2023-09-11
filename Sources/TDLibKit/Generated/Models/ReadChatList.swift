//
//  ReadChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-edb3d087
//  https://github.com/tdlib/td/tree/edb3d087
//

import Foundation


/// Traverse all chats in a chat list and marks all messages in the chats as read
public struct ReadChatList: Codable, Equatable, Hashable {

    /// Chat list in which to mark all chats as read
    public let chatList: ChatList?


    public init(chatList: ChatList?) {
        self.chatList = chatList
    }
}

