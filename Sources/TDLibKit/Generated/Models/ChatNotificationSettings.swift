//
//  ChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-d437ad27
//  https://github.com/tdlib/td/tree/d437ad27
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

    /// The name of an audio file to be used for notification sounds; only applies to iOS applications
    public let sound: String

    /// If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
    public let useDefaultDisableMentionNotifications: Bool

    /// If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
    public let useDefaultDisablePinnedMessageNotifications: Bool

    /// If true, mute_for is ignored and the value for the relevant type of chat is used instead
    public let useDefaultMuteFor: Bool

    /// If true, show_preview is ignored and the value for the relevant type of chat is used instead
    public let useDefaultShowPreview: Bool

    /// If true, sound is ignored and the value for the relevant type of chat is used instead
    public let useDefaultSound: Bool


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        showPreview: Bool,
        sound: String,
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
        self.sound = sound
        self.useDefaultDisableMentionNotifications = useDefaultDisableMentionNotifications
        self.useDefaultDisablePinnedMessageNotifications = useDefaultDisablePinnedMessageNotifications
        self.useDefaultMuteFor = useDefaultMuteFor
        self.useDefaultShowPreview = useDefaultShowPreview
        self.useDefaultSound = useDefaultSound
    }
}

