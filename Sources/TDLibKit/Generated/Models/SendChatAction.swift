//
//  SendChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Sends a notification about user activity in a chat
public struct SendChatAction: Codable {

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

