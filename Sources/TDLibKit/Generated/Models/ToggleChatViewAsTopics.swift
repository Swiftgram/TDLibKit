//
//  ToggleChatViewAsTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-63c7d030
//  https://github.com/tdlib/td/tree/63c7d030
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

