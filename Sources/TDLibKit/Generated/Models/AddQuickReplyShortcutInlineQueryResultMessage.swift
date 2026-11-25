//
//  AddQuickReplyShortcutInlineQueryResultMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Adds a message to a quick reply shortcut via an inline bot. If the shortcut doesn't exist and there are fewer than getOption("quick_reply_shortcut_count_max") shortcuts, then a new shortcut is created. The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding the new message. Returns the added message
public struct AddQuickReplyShortcutInlineQueryResultMessage: Codable, Equatable, Hashable {

    /// Pass true to hide the bot via which the message is sent. Can be used only for bots getOption("animation_search_bot_username") and getOption("photo_search_bot_username")
    public let hideViaBot: Bool?

    /// Identifier of the inline query
    public let queryId: TdInt64?

    /// Identifier of a quick reply message in the same shortcut to be replied to; pass 0 if none
    public let replyToMessageId: Int64?

    /// Identifier of the inline query result
    public let resultId: String?

    /// Name of the target shortcut
    public let shortcutName: String?


    public init(
        hideViaBot: Bool?,
        queryId: TdInt64?,
        replyToMessageId: Int64?,
        resultId: String?,
        shortcutName: String?
    ) {
        self.hideViaBot = hideViaBot
        self.queryId = queryId
        self.replyToMessageId = replyToMessageId
        self.resultId = resultId
        self.shortcutName = shortcutName
    }
}

