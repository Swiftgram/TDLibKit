//
//  SendChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends a notification about user activity in a chat
public struct SendChatAction: Codable, Equatable, Hashable {

    /// The action description; pass null to cancel the currently active action
    public let action: ChatAction?

    /// Unique identifier of business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Chat identifier
    public let chatId: Int64?

    /// If not 0, the message thread identifier in which the action was performed
    public let messageThreadId: Int64?


    public init(
        action: ChatAction?,
        businessConnectionId: String?,
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.action = action
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

