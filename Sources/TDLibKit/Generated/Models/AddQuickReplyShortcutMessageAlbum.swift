//
//  AddQuickReplyShortcutMessageAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Adds 2-10 messages grouped together into an album to a quick reply shortcut. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
public struct AddQuickReplyShortcutMessageAlbum: Codable, Equatable, Hashable {

    /// Contents of messages to be sent. At most 10 messages can be added to an album. All messages must have the same value of show_caption_above_media
    public let inputMessageContents: [InputMessageContent]?

    /// Identifier of a quick reply message in the same shortcut to be replied; pass 0 if none
    public let replyToMessageId: Int64?

    /// Name of the target shortcut
    public let shortcutName: String?


    public init(
        inputMessageContents: [InputMessageContent]?,
        replyToMessageId: Int64?,
        shortcutName: String?
    ) {
        self.inputMessageContents = inputMessageContents
        self.replyToMessageId = replyToMessageId
        self.shortcutName = shortcutName
    }
}

