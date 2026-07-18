//
//  SendEphemeralMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Sends an ephemeral message which will be received only by one bot in a chat. Currently, only ephemeral bot commands and replies to bot ephemeral messages can be sent using the method. The message is persistent across application restarts only if the message database is used. Returns the sent message
public struct SendEphemeralMessage: Codable, Equatable, Hashable {

    /// Identifier of the callback query which triggered the message; for bots only
    public let callbackQueryId: TdInt64?

    /// Target chat
    public let chatId: Int64?

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote, inputMessageLocation, inputMessageVenue, inputMessageContact
    public let inputMessageContent: InputMessageContent?

    /// Pass true to get a fake message instead of actually sending them
    public let onlyPreview: Bool?

    /// Identifier of the user who will receive the message
    public let receiverUserId: Int64?

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
        receiverUserId: Int64?,
        replyMarkup: ReplyMarkup?,
        replyTo: InputMessageReplyTo?,
        sendingId: Int?,
        topicId: MessageTopic?
    ) {
        self.callbackQueryId = callbackQueryId
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.onlyPreview = onlyPreview
        self.receiverUserId = receiverUserId
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
        self.sendingId = sendingId
        self.topicId = topicId
    }
}

