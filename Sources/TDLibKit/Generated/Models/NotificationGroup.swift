//
//  NotificationGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Describes a group of notifications
public struct NotificationGroup: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of a chat to which all notifications in the group belong
    public let chatId: Int64

    /// Unique persistent auto-incremented from 1 identifier of the notification group
    public let id: Int

    /// The list of active notifications
    public let notifications: [Notification]

    /// Total number of active notifications in the group
    public let totalCount: Int

    /// Type of the group
    public let type: NotificationGroupType


    public init(
        chatId: Int64,
        id: Int,
        notifications: [Notification],
        totalCount: Int,
        type: NotificationGroupType
    ) {
        self.chatId = chatId
        self.id = id
        self.notifications = notifications
        self.totalCount = totalCount
        self.type = type
    }
}

