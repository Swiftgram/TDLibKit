//
//  DeleteQuickReplyShortcutMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Deletes specified quick reply messages
public struct DeleteQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// Unique identifiers of the messages
    public let messageIds: [Int64]?

    /// Unique identifier of the quick reply shortcut to which the messages belong
    public let shortcutId: Int?


    public init(
        messageIds: [Int64]?,
        shortcutId: Int?
    ) {
        self.messageIds = messageIds
        self.shortcutId = shortcutId
    }
}

