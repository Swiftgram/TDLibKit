//
//  AddChatToList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
public struct AddChatToList: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// The chat list. Use getChatListsToAddChat to get suitable chat lists
    public let chatList: ChatList?


    public init(
        chatId: Int64?,
        chatList: ChatList?
    ) {
        self.chatId = chatId
        self.chatList = chatList
    }
}

