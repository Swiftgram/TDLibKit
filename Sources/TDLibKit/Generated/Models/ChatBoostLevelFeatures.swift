//
//  ChatBoostLevelFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains a list of features available on a specific chat boost level
public struct ChatBoostLevelFeatures: Codable, Equatable, Hashable {

    /// Number of custom colors for background of empty chat photo, replies to messages and link previews
    public let accentColorCount: Int

    /// True, if sponsored messages can be disabled in the chat
    public let canDisableSponsoredMessages: Bool

    /// True, if speech recognition can be used for video note and voice note messages by all users
    public let canRecognizeSpeech: Bool

    /// True, if custom emoji for reply header and link preview background can be set
    public let canSetBackgroundCustomEmoji: Bool

    /// True, if custom background can be set in the chat for all users
    public let canSetCustomBackground: Bool

    /// True, if custom emoji sticker set can be set for the chat
    public let canSetCustomEmojiStickerSet: Bool

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
        canDisableSponsoredMessages: Bool,
        canRecognizeSpeech: Bool,
        canSetBackgroundCustomEmoji: Bool,
        canSetCustomBackground: Bool,
        canSetCustomEmojiStickerSet: Bool,
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
        self.canDisableSponsoredMessages = canDisableSponsoredMessages
        self.canRecognizeSpeech = canRecognizeSpeech
        self.canSetBackgroundCustomEmoji = canSetBackgroundCustomEmoji
        self.canSetCustomBackground = canSetCustomBackground
        self.canSetCustomEmojiStickerSet = canSetCustomEmojiStickerSet
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

