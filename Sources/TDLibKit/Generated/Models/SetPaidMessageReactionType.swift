//
//  SetPaidMessageReactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the type of the paid message reaction of the current user on a message. The message must have a paid reaction added by the current user
public struct SetPaidMessageReactionType: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// New type of the paid reaction
    public let type: PaidReactionType?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        type: PaidReactionType?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.type = type
    }
}

