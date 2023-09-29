//
//  ChatNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
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

    /// If true, disable_mention_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
    public let useDefaultDisableMentionNotifications: Bool

    /// If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
    public let useDefaultDisablePinnedMessageNotifications: Bool

    /// If true, mute_for is ignored and the value for the relevant type of chat or the forum chat is used instead
    public let useDefaultMuteFor: Bool

    /// If true, mute_stories is ignored and the value for the relevant type of chat is used instead
    public let useDefaultMuteStories: Bool

    /// If true, show_preview is ignored and the value for the relevant type of chat or the forum chat is used instead
    public let useDefaultShowPreview: Bool

    /// If true, show_story_sender is ignored and the value for the relevant type of chat is used instead
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

