//
//  SetChatSlowModeDelay.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
public struct SetChatSlowModeDelay: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
    public let slowModeDelay: Int?


    public init(
        chatId: Int64?,
        slowModeDelay: Int?
    ) {
        self.chatId = chatId
        self.slowModeDelay = slowModeDelay
    }
}

