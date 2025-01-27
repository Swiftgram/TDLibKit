//
//  BotVerification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Describes verification status provided by a bot
public struct BotVerification: Codable, Equatable, Hashable {

    /// Identifier of the bot that provided the verification
    public let botUserId: Int64

    /// Custom description of verification reason set by the bot. Can contain only Mention, Hashtag, Cashtag, PhoneNumber, BankCardNumber, Url, and EmailAddress entities
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

