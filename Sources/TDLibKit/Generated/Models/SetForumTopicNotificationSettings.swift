//
//  SetForumTopicNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Changes the notification settings of a forum topic in a forum supergroup chat or a chat with a bot with topics
public struct SetForumTopicNotificationSettings: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier
    public let forumTopicId: Int?

    /// New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever
    public let notificationSettings: ChatNotificationSettings?


    public init(
        chatId: Int64?,
        forumTopicId: Int?,
        notificationSettings: ChatNotificationSettings?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
        self.notificationSettings = notificationSettings
    }
}

