//
//  GetChatNotificationSettingsExceptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Returns the list of chats with non-default notification settings for new messages
public struct GetChatNotificationSettingsExceptions: Codable, Equatable, Hashable {

    /// Pass true to include in the response chats with only non-default sound
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

