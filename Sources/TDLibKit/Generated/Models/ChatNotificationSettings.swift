//
//  ChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about notification settings for a chat
public struct ChatNotificationSettings: Codable, Equatable {

    /// If true, notifications for messages with mentions will be created as for an ordinary unread message
    public let disableMentionNotifications: Bool

    /// If true, notifications for incoming pinned messages will be created as for an ordinary unread message
    public let disablePinnedMessageNotifications: Bool

    /// Time left before notifications will be unmuted, in seconds
    public let muteFor: Int

    /// True, if message content must be displayed in notifications
    public let showPreview: Bool

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let soundId: TdInt64

    /// If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
    public let useDefaultDisableMentionNotifications: Bool

    /// If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
    public let useDefaultDisablePinnedMessageNotifications: Bool

    /// If true, mute_for is ignored and the value for the relevant type of chat is used instead
    public let useDefaultMuteFor: Bool

    /// If true, show_preview is ignored and the value for the relevant type of chat is used instead
    public let useDefaultShowPreview: Bool

    /// If true, the value for the relevant type of chat is used instead of sound_id
    public let useDefaultSound: Bool


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        showPreview: Bool,
        soundId: TdInt64,
        useDefaultDisableMentionNotifications: Bool,
        useDefaultDisablePinnedMessageNotifications: Bool,
        useDefaultMuteFor: Bool,
        useDefaultShowPreview: Bool,
        useDefaultSound: Bool
    ) {
        self.disableMentionNotifications = disableMentionNotifications
        self.disablePinnedMessageNotifications = disablePinnedMessageNotifications
        self.muteFor = muteFor
        self.showPreview = showPreview
        self.soundId = soundId
        self.useDefaultDisableMentionNotifications = useDefaultDisableMentionNotifications
        self.useDefaultDisablePinnedMessageNotifications = useDefaultDisablePinnedMessageNotifications
        self.useDefaultMuteFor = useDefaultMuteFor
        self.useDefaultShowPreview = useDefaultShowPreview
        self.useDefaultSound = useDefaultSound
    }
}

