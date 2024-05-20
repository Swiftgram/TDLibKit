//
//  ChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about notification settings for a chat or a forum topic
public struct ChatNotificationSettings: Codable, Equatable, Hashable {

    /// If true, notifications for messages with mentions will be created as for an ordinary unread message
    public let disableMentionNotifications: Bool

    /// If true, notifications for incoming pinned messages will be created as for an ordinary unread message
    public let disablePinnedMessageNotifications: Bool

    /// Time left before notifications will be unmuted, in seconds
    public let muteFor: Int

    /// True, if story notifications are disabled for the chat
    public let muteStories: Bool

    /// True, if message content must be displayed in notifications
    public let showPreview: Bool

    /// True, if the sender of stories must be displayed in notifications
    public let showStorySender: Bool

    /// Identifier of the notification sound to be played for messages; 0 if sound is disabled
    public let soundId: TdInt64

    /// Identifier of the notification sound to be played for stories; 0 if sound is disabled
    public let storySoundId: TdInt64

    /// If true, the value for the relevant type of chat or the forum chat is used instead of disable_mention_notifications
    public let useDefaultDisableMentionNotifications: Bool

    /// If true, the value for the relevant type of chat or the forum chat is used instead of disable_pinned_message_notifications
    public let useDefaultDisablePinnedMessageNotifications: Bool

    /// If true, the value for the relevant type of chat or the forum chat is used instead of mute_for
    public let useDefaultMuteFor: Bool

    /// If true, the value for the relevant type of chat is used instead of mute_stories
    public let useDefaultMuteStories: Bool

    /// If true, the value for the relevant type of chat or the forum chat is used instead of show_preview
    public let useDefaultShowPreview: Bool

    /// If true, the value for the relevant type of chat is used instead of show_story_sender
    public let useDefaultShowStorySender: Bool

    /// If true, the value for the relevant type of chat or the forum chat is used instead of sound_id
    public let useDefaultSound: Bool

    /// If true, the value for the relevant type of chat is used instead of story_sound_id
    public let useDefaultStorySound: Bool


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        muteStories: Bool,
        showPreview: Bool,
        showStorySender: Bool,
        soundId: TdInt64,
        storySoundId: TdInt64,
        useDefaultDisableMentionNotifications: Bool,
        useDefaultDisablePinnedMessageNotifications: Bool,
        useDefaultMuteFor: Bool,
        useDefaultMuteStories: Bool,
        useDefaultShowPreview: Bool,
        useDefaultShowStorySender: Bool,
        useDefaultSound: Bool,
        useDefaultStorySound: Bool
    ) {
        self.disableMentionNotifications = disableMentionNotifications
        self.disablePinnedMessageNotifications = disablePinnedMessageNotifications
        self.muteFor = muteFor
        self.muteStories = muteStories
        self.showPreview = showPreview
        self.showStorySender = showStorySender
        self.soundId = soundId
        self.storySoundId = storySoundId
        self.useDefaultDisableMentionNotifications = useDefaultDisableMentionNotifications
        self.useDefaultDisablePinnedMessageNotifications = useDefaultDisablePinnedMessageNotifications
        self.useDefaultMuteFor = useDefaultMuteFor
        self.useDefaultMuteStories = useDefaultMuteStories
        self.useDefaultShowPreview = useDefaultShowPreview
        self.useDefaultShowStorySender = useDefaultShowStorySender
        self.useDefaultSound = useDefaultSound
        self.useDefaultStorySound = useDefaultStorySound
    }
}

