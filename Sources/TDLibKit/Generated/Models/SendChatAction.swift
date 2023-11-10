//
//  SendChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-6ee64289
//  https://github.com/tdlib/td/tree/6ee64289
//

import Foundation


/// Sends a notification about user activity in a chat
public struct SendChatAction: Codable, Equatable, Hashable {

    /// The action description; pass null to cancel the currently active action
    public let action: ChatAction?

    /// Chat identifier
    public let chatId: Int64?

    /// If not 0, a message thread identifier in which the action was performed
    public let messageThreadId: Int64?


    public init(
        action: ChatAction?,
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.action = action
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

