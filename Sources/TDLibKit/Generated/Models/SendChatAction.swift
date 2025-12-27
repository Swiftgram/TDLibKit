//
//  SendChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
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

    /// Identifier of the topic in which the action is performed
    public let topicId: MessageTopic?


    public init(
        action: ChatAction?,
        businessConnectionId: String?,
        chatId: Int64?,
        topicId: MessageTopic?
    ) {
        self.action = action
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.topicId = topicId
    }
}

