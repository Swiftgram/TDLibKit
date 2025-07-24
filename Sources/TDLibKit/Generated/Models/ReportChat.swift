//
//  ReportChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported
public struct ReportChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifiers of reported messages. Use messageProperties.can_report_chat to check whether the message can be reported
    public let messageIds: [Int64]?

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?

    /// Additional report details if asked by the server; 0-1024 characters; leave empty for the initial request
    public let text: String?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?,
        optionId: Data?,
        text: String?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
        self.optionId = optionId
        self.text = text
    }
}

