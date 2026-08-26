//
//  EditEphemeralMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Edits the caption and reply markup of an ephemeral message sent by the bot; for bots only
public struct EditEphemeralMessageCaption: Codable, Equatable, Hashable {

    /// New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the ephemeral message
    public let ephemeralMessageId: Int?

    /// Identifier of the user who received the message
    public let receiverUserId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?

    /// Pass true to show the caption above the media; otherwise, the caption will be shown below the media. May be true only for animation, photo, and video messages
    public let showCaptionAboveMedia: Bool?


    public init(
        caption: FormattedText?,
        chatId: Int64?,
        ephemeralMessageId: Int?,
        receiverUserId: Int64?,
        replyMarkup: ReplyMarkup?,
        showCaptionAboveMedia: Bool?
    ) {
        self.caption = caption
        self.chatId = chatId
        self.ephemeralMessageId = ephemeralMessageId
        self.receiverUserId = receiverUserId
        self.replyMarkup = replyMarkup
        self.showCaptionAboveMedia = showCaptionAboveMedia
    }
}

