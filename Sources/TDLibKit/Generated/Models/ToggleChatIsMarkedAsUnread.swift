//
//  ToggleChatIsMarkedAsUnread.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Changes the marked as unread state of a chat
public struct ToggleChatIsMarkedAsUnread: Codable {

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

