//
//  Notification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a notification
public struct Notification: Codable, Equatable {

    /// Notification date
    public let date: Int

    /// Unique persistent identifier of this notification
    public let id: Int

    /// True, if the notification was explicitly sent without sound
    public let isSilent: Bool

    /// Notification type
    public let type: NotificationType


    public init(
        date: Int,
        id: Int,
        isSilent: Bool,
        type: NotificationType
    ) {
        self.date = date
        self.id = id
        self.isSilent = isSilent
        self.type = type
    }
}

