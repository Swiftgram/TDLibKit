//
//  ReportMessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Reports reactions set on a message to the Telegram moderators. Reactions on a message can be reported only if messageProperties.can_report_reactions
public struct ReportMessageReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// Identifier of the sender, which added the reaction
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

