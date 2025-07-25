//
//  EditQuickReplyMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Asynchronously edits the text, media or caption of a quick reply message. Use quickReplyMessage.can_be_edited to check whether a message can be edited. Media message can be edited only to a media message. Checklist messages can be edited only to a checklist message. The type of message content in an album can't be changed with exception of replacing a photo with a video or vice versa
public struct EditQuickReplyMessage: Codable, Equatable, Hashable {

    /// New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageChecklist, inputMessageDocument, inputMessagePhoto, inputMessageText, or inputMessageVideo
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the message
    public let messageId: Int64?

    /// Unique identifier of the quick reply shortcut with the message
    public let shortcutId: Int?


    public init(
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        shortcutId: Int?
    ) {
        self.inputMessageContent = inputMessageContent
        self.messageId = messageId
        self.shortcutId = shortcutId
    }
}

