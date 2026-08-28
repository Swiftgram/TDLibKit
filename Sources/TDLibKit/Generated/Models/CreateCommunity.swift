//
//  CreateCommunity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Creates a new community for the given chat. Returns identifier of the created community
public struct CreateCommunity: Codable, Equatable, Hashable {

    /// Identifier of the chat in the community; only chats with owned bots and owned basic group, supergroup and channel chats are allowed; basic group chats will be automatically upgraded to supergroup chats
    public let chatId: Int64?

    /// Pass true if the chat will be visible only to administrators of the community
    public let isChatHidden: Bool?

    /// Name of the new community
    public let name: String?


    public init(
        chatId: Int64?,
        isChatHidden: Bool?,
        name: String?
    ) {
        self.chatId = chatId
        self.isChatHidden = isChatHidden
        self.name = name
    }
}

