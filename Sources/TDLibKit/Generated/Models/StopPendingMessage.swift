//
//  StopPendingMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Stops a pending message generation by a bot
public struct StopPendingMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat with the bot
    public let chatId: Int64?

    /// Unique identifier of the message draft within the message thread
    public let draftId: TdInt64?

    /// Identifier of the topic in which the action is performed; pass null if none
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        draftId: TdInt64?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.draftId = draftId
        self.topicId = topicId
    }
}

