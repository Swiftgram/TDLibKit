//
//  ScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about notification settings for several chats
public struct ScopeNotificationSettings: Codable, Equatable {

    /// True, if notifications for messages with mentions will be created as for an ordinary unread message
    public let disableMentionNotifications: Bool

    /// True, if notifications for incoming pinned messages will be created as for an ordinary unread message
    public let disablePinnedMessageNotifications: Bool

    /// Time left before notifications will be unmuted, in seconds
    public let muteFor: Int

    /// True, if message content must be displayed in notifications
    public let showPreview: Bool

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let soundId: TdInt64


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        showPreview: Bool,
        soundId: TdInt64
    ) {
        self.disableMentionNotifications = disableMentionNotifications
        self.disablePinnedMessageNotifications = disablePinnedMessageNotifications
        self.muteFor = muteFor
        self.showPreview = showPreview
        self.soundId = soundId
    }
}

