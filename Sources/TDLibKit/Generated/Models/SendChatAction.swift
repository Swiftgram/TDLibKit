//
//  SendChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Sends a notification about user activity in a chat
public struct SendChatAction: Codable, Equatable, Hashable {

    /// The action description; pass null to cancel the currently active action
    public let action: ChatAction?

    /// Chat identifier
    public let chatId: Int64?

    /// If not 0, the message thread identifier in which the action was performed
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

