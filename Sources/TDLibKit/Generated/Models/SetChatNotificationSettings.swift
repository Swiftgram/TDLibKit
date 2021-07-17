//
//  SetChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
public struct SetChatNotificationSettings: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
    public let notificationSettings: ChatNotificationSettings


    public init(
        chatId: Int64,
        notificationSettings: ChatNotificationSettings
    ) {
        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

