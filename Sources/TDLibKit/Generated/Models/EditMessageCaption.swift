//
//  EditMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Edits the message content caption. Returns the edited message after the edit is completed on the server side. Can be used only if message.can_be_edited == true
public struct EditMessageCaption: Codable, Equatable, Hashable {

    /// New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
    public let caption: FormattedText?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?

    /// Pass true to show the caption above the media; otherwise, caption will be shown below the media. Can be true only for animation, photo, and video messages
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

