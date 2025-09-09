//
//  ScopeNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Contains information about notification settings for several chats
public struct ScopeNotificationSettings: Codable, Equatable, Hashable {

    /// True, if notifications for messages with mentions will be created as for an ordinary unread message
    public let disableMentionNotifications: Bool

    /// True, if notifications for incoming pinned messages will be created as for an ordinary unread message
    public let disablePinnedMessageNotifications: Bool

    /// Time left before notifications will be unmuted, in seconds
    public let muteFor: Int

    /// True, if story notifications are disabled
    public let muteStories: Bool

    /// True, if message content must be displayed in notifications
    public let showPreview: Bool

    /// True, if the chat that posted a story must be displayed in notifications
    public let showStoryPoster: Bool

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let soundId: TdInt64

    /// Identifier of the notification sound to be played for stories; 0 if sound is disabled
    public let storySoundId: TdInt64

    /// If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories
    public let useDefaultMuteStories: Bool


    public init(
        disableMentionNotifications: Bool,
        disablePinnedMessageNotifications: Bool,
        muteFor: Int,
        muteStories: Bool,
        showPreview: Bool,
        showStoryPoster: Bool,
        soundId: TdInt64,
        storySoundId: TdInt64,
        useDefaultMuteStories: Bool
    ) {
        self.disableMentionNotifications = disableMentionNotifications
        self.disablePinnedMessageNotifications = disablePinnedMessageNotifications
        self.muteFor = muteFor
        self.muteStories = muteStories
        self.showPreview = showPreview
        self.showStoryPoster = showStoryPoster
        self.soundId = soundId
        self.storySoundId = storySoundId
        self.useDefaultMuteStories = useDefaultMuteStories
    }
}

