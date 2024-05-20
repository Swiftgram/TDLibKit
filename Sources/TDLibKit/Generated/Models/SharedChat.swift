//
//  SharedChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a chat shared with a bot
public struct SharedChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Photo of the chat; for bots only; may be null
    public let photo: Photo?

    /// Title of the chat; for bots only
    public let title: String

    /// Username of the chat; for bots only
    public let username: String


    public init(
        chatId: Int64,
        photo: Photo?,
        title: String,
        username: String
    ) {
        self.chatId = chatId
        self.photo = photo
        self.title = title
        self.username = username
    }
}

