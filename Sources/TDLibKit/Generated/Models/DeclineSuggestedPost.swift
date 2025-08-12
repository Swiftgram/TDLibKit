//
//  DeclineSuggestedPost.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Declines a suggested post in a channel direct messages chat
public struct DeclineSuggestedPost: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Comment for the creator of the suggested post; 0-128 characters
    public let comment: String?

    /// Identifier of the message with the suggested post. Use messageProperties.can_be_declined to check whether the suggested post can be declined
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        comment: String?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.comment = comment
        self.messageId = messageId
    }
}

