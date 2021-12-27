//
//  GetChatNotificationSettingsExceptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-b4925dc4
//  https://github.com/tdlib/td/tree/b4925dc4
//

import Foundation


/// Returns list of chats with non-default notification settings
public struct GetChatNotificationSettingsExceptions: Codable, Equatable {

    /// If true, also chats with non-default sound will be returned
    public let compareSound: Bool?

    /// If specified, only chats from the scope will be returned; pass null to return chats from all scopes
    public let scope: NotificationSettingsScope?


    public init(
        compareSound: Bool?,
        scope: NotificationSettingsScope?
    ) {
        self.compareSound = compareSound
        self.scope = scope
    }
}

