//
//  ReportChatSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Reports a sponsored message to Telegram moderators
public struct ReportChatSponsoredMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the sponsored message
    public let chatId: Int64?

    /// Identifier of the sponsored message
    public let messageId: Int64?

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        optionId: Data?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.optionId = optionId
    }
}

