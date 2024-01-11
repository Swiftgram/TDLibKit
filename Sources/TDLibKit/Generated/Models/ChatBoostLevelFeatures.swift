//
//  ChatBoostLevelFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-94133602
//  https://github.com/tdlib/td/tree/94133602
//

import Foundation


/// Contains a list of features available on a specific chat boost level
public struct ChatBoostLevelFeatures: Codable, Equatable, Hashable {

    /// Number of custom colors for background of empty chat photo, replies to messages and link previews
    public let accentColorCount: Int

    /// True, if custom emoji for reply header and link preview background can be set
    public let canSetBackgroundCustomEmoji: Bool

    /// True, if custom background can be set in the chat for all users
    public let canSetCustomBackground: Bool

    /// True, if emoji status can be set
    public let canSetEmojiStatus: Bool

    /// True, if custom emoji for profile background can be set
    public let canSetProfileBackgroundCustomEmoji: Bool

    /// Number of chat theme backgrounds that can be set as chat background
    public let chatThemeBackgroundCount: Int

    /// Number of custom emoji reactions that can be added to the list of available reactions
    public let customEmojiReactionCount: Int

    /// Target chat boost level
    public let level: Int

    /// Number of custom colors for profile photo background
    public let profileAccentColorCount: Int

    /// Number of stories that the chat can publish daily
    public let storyPerDayCount: Int

    /// Number of custom colors for chat title
    public let titleColorCount: Int


    public init(
        accentColorCount: Int,
        canSetBackgroundCustomEmoji: Bool,
        canSetCustomBackground: Bool,
        canSetEmojiStatus: Bool,
        canSetProfileBackgroundCustomEmoji: Bool,
        chatThemeBackgroundCount: Int,
        customEmojiReactionCount: Int,
        level: Int,
        profileAccentColorCount: Int,
        storyPerDayCount: Int,
        titleColorCount: Int
    ) {
        self.accentColorCount = accentColorCount
        self.canSetBackgroundCustomEmoji = canSetBackgroundCustomEmoji
        self.canSetCustomBackground = canSetCustomBackground
        self.canSetEmojiStatus = canSetEmojiStatus
        self.canSetProfileBackgroundCustomEmoji = canSetProfileBackgroundCustomEmoji
        self.chatThemeBackgroundCount = chatThemeBackgroundCount
        self.customEmojiReactionCount = customEmojiReactionCount
        self.level = level
        self.profileAccentColorCount = profileAccentColorCount
        self.storyPerDayCount = storyPerDayCount
        self.titleColorCount = titleColorCount
    }
}

