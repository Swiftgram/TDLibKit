//
//  ScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-fdcb1098
//  https://github.com/tdlib/td/tree/fdcb1098
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

    /// The name of an audio file to be used for notification sounds; only applies to iOS applications
    public let sound: String


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        showPreview: Bool,
        sound: String
    ) {
        self.disableMentionNotifications = disableMentionNotifications
        self.disablePinnedMessageNotifications = disablePinnedMessageNotifications
        self.muteFor = muteFor
        self.showPreview = showPreview
        self.sound = sound
    }
}

