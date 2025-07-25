//
//  PreparedInlineMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Represents a ready to send inline message. Use sendInlineQueryResultMessage to send the message
public struct PreparedInlineMessage: Codable, Equatable, Hashable {

    /// Types of the chats to which the message can be sent
    public let chatTypes: TargetChatTypes

    /// Unique identifier of the inline query to pass to sendInlineQueryResultMessage
    public let inlineQueryId: TdInt64

    /// Resulted inline message of the query
    public let result: InlineQueryResult


    public init(
        chatTypes: TargetChatTypes,
        inlineQueryId: TdInt64,
        result: InlineQueryResult
    ) {
        self.chatTypes = chatTypes
        self.inlineQueryId = inlineQueryId
        self.result = result
    }
}

