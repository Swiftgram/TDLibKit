//
//  RemoveNotificationGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
public struct RemoveNotificationGroup: Codable {

    /// The maximum identifier of removed notifications
    public let maxNotificationId: Int

    /// Notification group identifier
    public let notificationGroupId: Int


    public init(
        maxNotificationId: Int,
        notificationGroupId: Int
    ) {
        self.maxNotificationId = maxNotificationId
        self.notificationGroupId = notificationGroupId
    }
}

