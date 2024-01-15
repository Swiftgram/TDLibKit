//
//  GetChatActiveStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-0f98d766
//  https://github.com/tdlib/td/tree/0f98d766
//

import Foundation


/// Returns the list of active stories posted by the given chat
public struct GetChatActiveStories: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

