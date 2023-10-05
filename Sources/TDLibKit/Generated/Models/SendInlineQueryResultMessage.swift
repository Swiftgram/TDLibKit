//
//  SendInlineQueryResultMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-b41a51f2
//  https://github.com/tdlib/td/tree/b41a51f2
//

import Foundation


/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
public struct SendInlineQueryResultMessage: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
    public let hideViaBot: Bool?

    /// If not 0, a message thread identifier in which the message will be sent
    public let messageThreadId: Int64?

    /// Options to be used to send the message; pass null to use default options
    public let options: MessageSendOptions?

    /// Identifier of the inline query
    public let queryId: TdInt64?

    /// Identifier of the replied message or story; pass null if none
    public let replyTo: MessageReplyTo?

    /// Identifier of the inline query result
    public let resultId: String?


    public init(
        chatId: Int64?,
        hideViaBot: Bool?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        queryId: TdInt64?,
        replyTo: MessageReplyTo?,
        resultId: String?
    ) {
        self.chatId = chatId
        self.hideViaBot = hideViaBot
        self.messageThreadId = messageThreadId
        self.options = options
        self.queryId = queryId
        self.replyTo = replyTo
        self.resultId = resultId
    }
}

