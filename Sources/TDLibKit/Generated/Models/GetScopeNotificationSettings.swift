//
//  GetScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
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

