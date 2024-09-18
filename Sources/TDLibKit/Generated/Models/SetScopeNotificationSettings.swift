//
//  SetScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-91aa6c9e
//  https://github.com/tdlib/td/tree/91aa6c9e
//

import Foundation


/// Changes notification settings for chats of a given type
public struct SetScopeNotificationSettings: Codable, Equatable, Hashable {

    /// The new notification settings for the given scope
    public let notificationSettings: ScopeNotificationSettings?

    /// Types of chats for which to change the notification settings
    public let scope: NotificationSettingsScope?


    public init(
        notificationSettings: ScopeNotificationSettings?,
        scope: NotificationSettingsScope?
    ) {
        self.notificationSettings = notificationSettings
        self.scope = scope
    }
}

