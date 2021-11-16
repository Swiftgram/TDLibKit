//
//  BlockMessageSenderFromReplies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Blocks an original sender of a message in the Replies chat
public struct BlockMessageSenderFromReplies: Codable {

    /// Pass true if all messages from the same sender must be deleted
    public let deleteAllMessages: Bool?

    /// Pass true if the message must be deleted
    public let deleteMessage: Bool?

    /// The identifier of an incoming message in the Replies chat
    public let messageId: Int64?

    /// Pass true if the sender must be reported to the Telegram moderators
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

