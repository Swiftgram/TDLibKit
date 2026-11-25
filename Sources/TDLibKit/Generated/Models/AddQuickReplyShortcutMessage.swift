//
//  AddQuickReplyShortcutMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Adds a message to a quick reply shortcut. If the shortcut doesn't exist and there are fewer than getOption("quick_reply_shortcut_count_max") shortcuts, then a new shortcut is created. The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding the new message. Returns the added message
public struct AddQuickReplyShortcutMessage: Codable, Equatable, Hashable {

    /// The content of the message to be added; inputMessagePaidMedia, inputMessageForwarded, and inputMessageLiveLocation aren't supported
    public let inputMessageContent: InputMessageContent?

    /// Identifier of a quick reply message in the same shortcut to be replied to; pass 0 if none
    public let replyToMessageId: Int64?

    /// Name of the target shortcut
    public let shortcutName: String?


    public init(
        inputMessageContent: InputMessageContent?,
        replyToMessageId: Int64?,
        shortcutName: String?
    ) {
        self.inputMessageContent = inputMessageContent
        self.replyToMessageId = replyToMessageId
        self.shortcutName = shortcutName
    }
}

