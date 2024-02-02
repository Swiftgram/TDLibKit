//
//  ChatBoostFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Contains a list of features available on the first chat boost levels
public struct ChatBoostFeatures: Codable, Equatable, Hashable {

    /// The list of features
    public let features: [ChatBoostLevelFeatures]

    /// The minimum boost level required to set custom emoji for reply header and link preview background
    public let minBackgroundCustomEmojiBoostLevel: Int

    /// The minimum boost level required to set a chat theme background as chat background
    public let minChatThemeBackgroundBoostLevel: Int

    /// The minimum boost level required to set custom chat background
    public let minCustomBackgroundBoostLevel: Int

    /// The minimum boost level required to set emoji status
    public let minEmojiStatusBoostLevel: Int

    /// The minimum boost level required to set custom emoji for profile background
    public let minProfileBackgroundCustomEmojiBoostLevel: Int


    public init(
        features: [ChatBoostLevelFeatures],
        minBackgroundCustomEmojiBoostLevel: Int,
        minChatThemeBackgroundBoostLevel: Int,
        minCustomBackgroundBoostLevel: Int,
        minEmojiStatusBoostLevel: Int,
        minProfileBackgroundCustomEmojiBoostLevel: Int
    ) {
        self.features = features
        self.minBackgroundCustomEmojiBoostLevel = minBackgroundCustomEmojiBoostLevel
        self.minChatThemeBackgroundBoostLevel = minChatThemeBackgroundBoostLevel
        self.minCustomBackgroundBoostLevel = minCustomBackgroundBoostLevel
        self.minEmojiStatusBoostLevel = minEmojiStatusBoostLevel
        self.minProfileBackgroundCustomEmojiBoostLevel = minProfileBackgroundCustomEmojiBoostLevel
    }
}

