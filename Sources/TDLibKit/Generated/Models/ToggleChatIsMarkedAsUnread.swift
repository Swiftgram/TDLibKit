//
//  ToggleChatIsMarkedAsUnread.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Changes the marked as unread state of a chat
public struct ToggleChatIsMarkedAsUnread: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New value of is_marked_as_unread
    public let isMarkedAsUnread: Bool?


    public init(
        chatId: Int64?,
        isMarkedAsUnread: Bool?
    ) {
        self.chatId = chatId
        self.isMarkedAsUnread = isMarkedAsUnread
    }
}

