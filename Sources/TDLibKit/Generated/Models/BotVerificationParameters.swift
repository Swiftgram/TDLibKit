//
//  BotVerificationParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes parameters of verification that is provided by a bot
public struct BotVerificationParameters: Codable, Equatable, Hashable {

    /// True, if the bot is allowed to provide custom description for verified entities
    public let canSetCustomDescription: Bool

    /// Default custom description of verification reason to be used as placeholder in setMessageSenderBotVerification; may be null if none
    public let defaultCustomDescription: FormattedText?

    /// Identifier of the custom emoji that is used as the verification sign
    public let iconCustomEmojiId: TdInt64

    /// Name of the organization that provides verification
    public let organizationName: String


    public init(
        canSetCustomDescription: Bool,
        defaultCustomDescription: FormattedText?,
        iconCustomEmojiId: TdInt64,
        organizationName: String
    ) {
        self.canSetCustomDescription = canSetCustomDescription
        self.defaultCustomDescription = defaultCustomDescription
        self.iconCustomEmojiId = iconCustomEmojiId
        self.organizationName = organizationName
    }
}

