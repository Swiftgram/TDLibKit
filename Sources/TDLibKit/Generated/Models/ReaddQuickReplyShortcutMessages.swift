//
//  ReaddQuickReplyShortcutMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Readds quick reply messages which failed to add. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed. If a message is readded, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be readded, null will be returned instead of the message
public struct ReaddQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// Identifiers of the quick reply messages to readd. Message identifiers must be in a strictly increasing order
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

