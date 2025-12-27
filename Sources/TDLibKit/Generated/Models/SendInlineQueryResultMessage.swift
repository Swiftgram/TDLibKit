//
//  SendInlineQueryResultMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
public struct SendInlineQueryResultMessage: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
    public let hideViaBot: Bool?

    /// Options to be used to send the message; pass null to use default options
    public let options: MessageSendOptions?

    /// Identifier of the inline query
    public let queryId: TdInt64?

    /// Information about the message or story to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?

    /// Identifier of the inline query result
    public let resultId: String?

    /// Topic in which the message will be sent; pass null if none
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        hideViaBot: Bool?,
        options: MessageSendOptions?,
        queryId: TdInt64?,
        replyTo: InputMessageReplyTo?,
        resultId: String?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.hideViaBot = hideViaBot
        self.options = options
        self.queryId = queryId
        self.replyTo = replyTo
        self.resultId = resultId
        self.topicId = topicId
    }
}

