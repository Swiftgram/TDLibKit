//
//  CanPostStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Checks whether the current user can post a story on behalf of a chat; requires can_post_stories right for supergroup and channel chats
public struct CanPostStory: Codable, Equatable, Hashable {

    /// Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

