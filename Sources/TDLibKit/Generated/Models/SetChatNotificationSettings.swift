//
//  SetChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
public struct SetChatNotificationSettings: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New notification settings for the chat. If the chat is muted for more than 366 days, it is considered to be muted forever
    public let notificationSettings: ChatNotificationSettings?


    public init(
        chatId: Int64?,
        notificationSettings: ChatNotificationSettings?
    ) {
        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

