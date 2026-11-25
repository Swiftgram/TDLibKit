//
//  ToggleChatViewAsTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the view_as_topics setting of a forum chat or Saved Messages
public struct ToggleChatViewAsTopics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New value of view_as_topics
    public let viewAsTopics: Bool?


    public init(
        chatId: Int64?,
        viewAsTopics: Bool?
    ) {
        self.chatId = chatId
        self.viewAsTopics = viewAsTopics
    }
}

