//
//  SetChatSlowModeDelay.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Changes the slow mode delay of a chat. Available only in supergroups; requires can_restrict_members administrator right
public struct SetChatSlowModeDelay: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New slow mode delay for the chat, in seconds; must be one of 0, 5, 10, 30, 60, 300, 900, or 3600
    public let slowModeDelay: Int?


    public init(
        chatId: Int64?,
        slowModeDelay: Int?
    ) {
        self.chatId = chatId
        self.slowModeDelay = slowModeDelay
    }
}

