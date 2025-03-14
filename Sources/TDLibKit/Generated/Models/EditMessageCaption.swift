//
//  EditMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Edits the message content caption. Returns the edited message after the edit is completed on the server side
public struct EditMessageCaption: Codable, Equatable, Hashable {

    /// New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
    public let caption: FormattedText?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message. Use messageProperties.can_be_edited to check whether the message can be edited
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?

    /// Pass true to show the caption above the media; otherwise, the caption will be shown below the media. May be true only for animation, photo, and video messages
    public let showCaptionAboveMedia: Bool?


    public init(
        caption: FormattedText?,
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?,
        showCaptionAboveMedia: Bool?
    ) {
        self.caption = caption
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
        self.showCaptionAboveMedia = showCaptionAboveMedia
    }
}

