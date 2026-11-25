//
//  ReaddQuickReplyShortcutMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Re-adds quick reply messages that failed to add. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after the time specified in messageSendingStateFailed.retry_after has passed. If a message is re-added, the corresponding message that failed to send is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-added, null will be returned instead of the message
public struct ReaddQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// Identifiers of the quick reply messages to re-add. Message identifiers must be in a strictly increasing order
    public let messageIds: [Int64]?

    /// Name of the target shortcut
    public let shortcutName: String?


    public init(
        messageIds: [Int64]?,
        shortcutName: String?
    ) {
        self.messageIds = messageIds
        self.shortcutName = shortcutName
    }
}

