//
//  ToggleBusinessConnectedBotChatIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Pauses or resumes the connected business bot in a specific chat
public struct ToggleBusinessConnectedBotChatIsPaused: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true to pause the connected bot in the chat; pass false to resume the bot
    public let isPaused: Bool?


    public init(
        chatId: Int64?,
        isPaused: Bool?
    ) {
        self.chatId = chatId
        self.isPaused = isPaused
    }
}

