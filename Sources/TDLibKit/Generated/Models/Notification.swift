//
//  Notification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a notification
public struct Notification: Codable, Equatable, Hashable, Identifiable {

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

