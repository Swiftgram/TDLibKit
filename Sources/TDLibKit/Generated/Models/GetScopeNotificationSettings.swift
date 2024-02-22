//
//  GetScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-fe620155
//  https://github.com/tdlib/td/tree/fe620155
//

import Foundation


/// Returns the notification settings for chats of a given type
public struct GetScopeNotificationSettings: Codable, Equatable, Hashable {

    /// Types of chats for which to return the notification settings information
    public let scope: NotificationSettingsScope?


    public init(scope: NotificationSettingsScope?) {
        self.scope = scope
    }
}

