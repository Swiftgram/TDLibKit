//
//  SendChatScreenshotTakenNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-d912fd14
//  https://github.com/tdlib/td/tree/d912fd14
//

import Foundation


/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
public struct SendChatScreenshotTakenNotification: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

