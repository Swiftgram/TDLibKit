//
//  ReactionNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Contains information about notification settings for reactions and poll votes
public struct ReactionNotificationSettings: Codable, Equatable, Hashable {

    /// Source of message reactions for which notifications are shown
    public let messageReactionSource: ReactionNotificationSource

    /// Source of poll votes for which notifications are shown
    public let pollVoteSource: ReactionNotificationSource

    /// True, if reaction sender and emoji must be displayed in notifications
    public let showPreview: Bool

    /// Identifier of the notification sound to be played; 0 if sound is disabled; pass -1 to use the app-dependent default sound
    public let soundId: TdInt64

    /// Source of story reactions for which notifications are shown
    public let storyReactionSource: ReactionNotificationSource


    public init(
        messageReactionSource: ReactionNotificationSource,
        pollVoteSource: ReactionNotificationSource,
        showPreview: Bool,
        soundId: TdInt64,
        storyReactionSource: ReactionNotificationSource
    ) {
        self.messageReactionSource = messageReactionSource
        self.pollVoteSource = pollVoteSource
        self.showPreview = showPreview
        self.soundId = soundId
        self.storyReactionSource = storyReactionSource
    }
}

