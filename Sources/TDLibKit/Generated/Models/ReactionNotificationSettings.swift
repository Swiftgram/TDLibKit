//
//  ReactionNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about notification settings for reactions
public struct ReactionNotificationSettings: Codable, Equatable, Hashable {

    /// Source of message reactions for which notifications are shown
    public let messageReactionSource: ReactionNotificationSource

    /// True, if reaction sender and emoji must be displayed in notifications
    public let showPreview: Bool

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let soundId: TdInt64

    /// Source of story reactions for which notifications are shown
    public let storyReactionSource: ReactionNotificationSource


    public init(
        messageReactionSource: ReactionNotificationSource,
        showPreview: Bool,
        soundId: TdInt64,
        storyReactionSource: ReactionNotificationSource
    ) {
        self.messageReactionSource = messageReactionSource
        self.showPreview = showPreview
        self.soundId = soundId
        self.storyReactionSource = storyReactionSource
    }
}

