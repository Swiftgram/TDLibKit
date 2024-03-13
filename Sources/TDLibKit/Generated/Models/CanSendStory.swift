//
//  CanSendStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-b41f3219
//  https://github.com/tdlib/td/tree/b41f3219
//

import Foundation


/// Checks whether the current user can send a story on behalf of a chat; requires can_post_stories right for supergroup and channel chats
public struct CanSendStory: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

