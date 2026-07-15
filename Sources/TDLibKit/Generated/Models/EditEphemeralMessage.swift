//
//  EditEphemeralMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Edits the text, caption or reply markup of an ephemeral message sent by the bot; for bots only
public struct EditEphemeralMessage: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the ephemeral message
    public let ephemeralMessageId: Int?

    /// New content of the message; pass null to edit only reply markup. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the user who received the message
    public let receiverUserId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        ephemeralMessageId: Int?,
        inputMessageContent: InputMessageContent?,
        receiverUserId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.ephemeralMessageId = ephemeralMessageId
        self.inputMessageContent = inputMessageContent
        self.receiverUserId = receiverUserId
        self.replyMarkup = replyMarkup
    }
}

