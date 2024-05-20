//
//  BlockMessageSenderFromReplies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Blocks an original sender of a message in the Replies chat
public struct BlockMessageSenderFromReplies: Codable, Equatable, Hashable {

    /// Pass true to delete all messages from the same sender
    public let deleteAllMessages: Bool?

    /// Pass true to delete the message
    public let deleteMessage: Bool?

    /// The identifier of an incoming message in the Replies chat
    public let messageId: Int64?

    /// Pass true to report the sender to the Telegram moderators
    public let reportSpam: Bool?


    public init(
        deleteAllMessages: Bool?,
        deleteMessage: Bool?,
        messageId: Int64?,
        reportSpam: Bool?
    ) {
        self.deleteAllMessages = deleteAllMessages
        self.deleteMessage = deleteMessage
        self.messageId = messageId
        self.reportSpam = reportSpam
    }
}

