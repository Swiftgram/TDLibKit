//
//  ReportChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported
public struct ReportChat: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifiers of reported messages; may be empty to report the whole chat
    public let messageIds: [Int64]?

    /// The reason for reporting the chat
    public let reason: ChatReportReason?

    /// Additional report details; 0-1024 characters
    public let text: String?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?,
        reason: ChatReportReason?,
        text: String?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
        self.reason = reason
        self.text = text
    }
}

