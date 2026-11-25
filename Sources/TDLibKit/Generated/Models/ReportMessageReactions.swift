//
//  ReportMessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Reports reactions set on a message to the Telegram moderators. Reactions on a message can be reported only if messageProperties.can_report_reactions
public struct ReportMessageReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// Identifier of the sender who added the reaction
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.senderId = senderId
    }
}

