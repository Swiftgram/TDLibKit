//
//  ToggleDirectMessagesChatTopicCanSendUnpaidMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Allows sending unpaid messages to the given topic of the channel direct messages chat administered by the current user
public struct ToggleDirectMessagesChatTopicCanSendUnpaidMessages: Codable, Equatable, Hashable {

    /// Pass true to allow unpaid messages; pass false to disallow unpaid messages
    public let canSendUnpaidMessages: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true to refund the user previously paid messages
    public let refundPayments: Bool?

    /// Identifier of the topic
    public let topicId: Int64?


    public init(
        canSendUnpaidMessages: Bool?,
        chatId: Int64?,
        refundPayments: Bool?,
        topicId: Int64?
    ) {
        self.canSendUnpaidMessages = canSendUnpaidMessages
        self.chatId = chatId
        self.refundPayments = refundPayments
        self.topicId = topicId
    }
}

