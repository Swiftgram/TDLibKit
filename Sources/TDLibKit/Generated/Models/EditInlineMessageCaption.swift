//
//  EditInlineMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Edits the caption of an inline message sent via a bot; for bots only
public struct EditInlineMessageCaption: Codable, Equatable, Hashable {

    /// New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// Inline message identifier
    public let inlineMessageId: String?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?

    /// Pass true to show the caption above the media; otherwise, the caption will be shown below the media. May be true only for animation, photo, and video messages
    public let showCaptionAboveMedia: Bool?


    public init(
        caption: FormattedText?,
        inlineMessageId: String?,
        replyMarkup: ReplyMarkup?,
        showCaptionAboveMedia: Bool?
    ) {
        self.caption = caption
        self.inlineMessageId = inlineMessageId
        self.replyMarkup = replyMarkup
        self.showCaptionAboveMedia = showCaptionAboveMedia
    }
}

