//
//  SendEphemeralMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Sends an ephemeral message which will be received only by one bot in a chat. Currently, only ephemeral bot commands and replies to bot ephemeral messages can be sent using the method. The message is persistent across application restarts only if the message database is used. Returns the sent message
public struct SendEphemeralMessage: Codable, Equatable, Hashable {

    /// Identifier of the callback query which triggered the message; for bots only
    public let callbackQueryId: TdInt64?

    /// Target chat
    public let chatId: Int64?

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageRichMessage, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote, inputMessageLocation, inputMessageVenue, inputMessageContact
    public let inputMessageContent: InputMessageContent?

    /// Pass true to get a fake message instead of actually sending them
    public let onlyPreview: Bool?

    /// Pass true if the content of the message must be protected from forwarding and saving; for bots only
    public let protectContent: Bool?

    /// Identifier of the user who will receive the message
    public let receiverUserId: Int64?

    /// Pass true if the ephemeral message must replace the message from which the callback query originated; for bots only
    public let replaceCallbackQueryMessage: Bool?

    /// Markup for replying to the message; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?

    /// Information about the message to be replied; pass null if none. The message can be an incoming ephemeral message
    public let replyTo: InputMessageReplyTo?

    /// Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
    public let sendingId: Int?

    /// Topic in which the message will be sent; pass null if none
    public let topicId: MessageTopic?


    public init(
        callbackQueryId: TdInt64?,
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        onlyPreview: Bool?,
        protectContent: Bool?,
        receiverUserId: Int64?,
        replaceCallbackQueryMessage: Bool?,
        replyMarkup: ReplyMarkup?,
        replyTo: InputMessageReplyTo?,
        sendingId: Int?,
        topicId: MessageTopic?
    ) {
        self.callbackQueryId = callbackQueryId
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.onlyPreview = onlyPreview
        self.protectContent = protectContent
        self.receiverUserId = receiverUserId
        self.replaceCallbackQueryMessage = replaceCallbackQueryMessage
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
        self.sendingId = sendingId
        self.topicId = topicId
    }
}

