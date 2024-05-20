//
//  AddQuickReplyShortcutInlineQueryResultMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds a message to a quick reply shortcut via inline bot. If shortcut doesn't exist and there are less than getOption("quick_reply_shortcut_count_max") shortcuts, then a new shortcut is created. The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding the new message. Returns the added message
public struct AddQuickReplyShortcutInlineQueryResultMessage: Codable, Equatable, Hashable {

    /// Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
    public let hideViaBot: Bool?

    /// Identifier of the inline query
    public let queryId: TdInt64?

    /// Identifier of a quick reply message in the same shortcut to be replied; pass 0 if none
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

