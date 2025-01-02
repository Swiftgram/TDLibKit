//
//  BotVerification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes verification status provided by a bot
public struct BotVerification: Codable, Equatable, Hashable {

    /// Identifier of the bot that provided the verification
    public let botUserId: Int64

    /// Custom description of verification reason set by the bot
    public let customDescription: FormattedText

    /// Identifier of the custom emoji that is used as the verification sign
    public let iconCustomEmojiId: TdInt64


    public init(
        botUserId: Int64,
        customDescription: FormattedText,
        iconCustomEmojiId: TdInt64
    ) {
        self.botUserId = botUserId
        self.customDescription = customDescription
        self.iconCustomEmojiId = iconCustomEmojiId
    }
}

