//
//  ReportChatPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-7152a5c2
//  https://github.com/tdlib/td/tree/7152a5c2
//

import Foundation


/// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if chat.can_be_reported
public struct ReportChatPhoto: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the photo to report. Only full photos from chatPhoto can be reported
    public let fileId: Int?

    /// The reason for reporting the chat photo
    public let reason: ReportReason?

    /// Additional report details; 0-1024 characters
    public let text: String?


    public init(
        chatId: Int64?,
        fileId: Int?,
        reason: ReportReason?,
        text: String?
    ) {
        self.chatId = chatId
        self.fileId = fileId
        self.reason = reason
        self.text = text
    }
}

