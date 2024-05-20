//
//  ChatBoostFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains a list of features available on the first chat boost levels
public struct ChatBoostFeatures: Codable, Equatable, Hashable {

    /// The list of features
    public let features: [ChatBoostLevelFeatures]

    /// The minimum boost level required to set custom emoji for reply header and link preview background; for channel chats only
    public let minBackgroundCustomEmojiBoostLevel: Int

    /// The minimum boost level required to set a chat theme background as chat background
    public let minChatThemeBackgroundBoostLevel: Int

    /// The minimum boost level required to set custom chat background
    public let minCustomBackgroundBoostLevel: Int

    /// The minimum boost level required to set custom emoji sticker set for the chat; for supergroup chats only
    public let minCustomEmojiStickerSetBoostLevel: Int

    /// The minimum boost level required to set emoji status
    public let minEmojiStatusBoostLevel: Int

    /// The minimum boost level required to set custom emoji for profile background
    public let minProfileBackgroundCustomEmojiBoostLevel: Int

    /// The minimum boost level allowing to recognize speech in video note and voice note messages for non-Premium users; for supergroup chats only
    public let minSpeechRecognitionBoostLevel: Int

    /// The minimum boost level allowing to disable sponsored messages in the chat; for channel chats only
    public let minSponsoredMessageDisableBoostLevel: Int


    public init(
        features: [ChatBoostLevelFeatures],
        minBackgroundCustomEmojiBoostLevel: Int,
        minChatThemeBackgroundBoostLevel: Int,
        minCustomBackgroundBoostLevel: Int,
        minCustomEmojiStickerSetBoostLevel: Int,
        minEmojiStatusBoostLevel: Int,
        minProfileBackgroundCustomEmojiBoostLevel: Int,
        minSpeechRecognitionBoostLevel: Int,
        minSponsoredMessageDisableBoostLevel: Int
    ) {
        self.features = features
        self.minBackgroundCustomEmojiBoostLevel = minBackgroundCustomEmojiBoostLevel
        self.minChatThemeBackgroundBoostLevel = minChatThemeBackgroundBoostLevel
        self.minCustomBackgroundBoostLevel = minCustomBackgroundBoostLevel
        self.minCustomEmojiStickerSetBoostLevel = minCustomEmojiStickerSetBoostLevel
        self.minEmojiStatusBoostLevel = minEmojiStatusBoostLevel
        self.minProfileBackgroundCustomEmojiBoostLevel = minProfileBackgroundCustomEmojiBoostLevel
        self.minSpeechRecognitionBoostLevel = minSpeechRecognitionBoostLevel
        self.minSponsoredMessageDisableBoostLevel = minSponsoredMessageDisableBoostLevel
    }
}

