//
//  GetScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns the notification settings for chats of a given type
public struct GetScopeNotificationSettings: Codable, Equatable {

    /// Types of chats for which to return the notification settings information
    public let scope: NotificationSettingsScope?


    public init(scope: NotificationSettingsScope?) {
        self.scope = scope
    }
}

