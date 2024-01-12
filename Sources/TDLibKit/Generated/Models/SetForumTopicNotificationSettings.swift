//
//  SetForumTopicNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Changes the notification settings of a forum topic
public struct SetForumTopicNotificationSettings: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?

    /// New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever
    public let notificationSettings: ChatNotificationSettings?


    public init(
        chatId: Int64?,
        messageThreadId: Int64?,
        notificationSettings: ChatNotificationSettings?
    ) {
        self.chatId = chatId
        self.messageThreadId = messageThreadId
        self.notificationSettings = notificationSettings
    }
}

