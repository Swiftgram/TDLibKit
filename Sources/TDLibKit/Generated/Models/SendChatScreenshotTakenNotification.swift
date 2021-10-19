//
//  SendChatScreenshotTakenNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
public struct SendChatScreenshotTakenNotification: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

