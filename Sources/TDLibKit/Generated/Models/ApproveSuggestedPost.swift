//
//  ApproveSuggestedPost.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Approves a suggested post in a channel direct messages chat
public struct ApproveSuggestedPost: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Identifier of the message with the suggested post. Use messageProperties.can_be_approved to check whether the suggested post can be approved
    public let messageId: Int64?

    /// Point in time (Unix timestamp) when the post is expected to be published; pass 0 if the date has already been chosen. If specified, then the date must be in the future, but at most getOption("suggested_post_send_delay_max") seconds in the future
    public let sendDate: Int?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        sendDate: Int?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.sendDate = sendDate
    }
}

