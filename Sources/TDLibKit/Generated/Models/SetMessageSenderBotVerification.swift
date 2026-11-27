//
//  SetMessageSenderBotVerification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Changes the verification status of a user or a chat by an owned bot
public struct SetMessageSenderBotVerification: Codable, Equatable, Hashable {

    /// Identifier of the owned bot that will verify the user or the chat
    public let botUserId: Int64?

    /// Custom description of the verification reason; 0-getOption("bot_verification_custom_description_length_max") characters. Only TextUrl entities are supported. If empty, then "was verified by organization "organization_name"" will be used as the description. Can be specified only if the bot is allowed to provide a custom description
    public let customDescription: FormattedText?

    /// Identifier of the user or the supergroup or channel chat that will be verified by the bot
    public let verifiedId: MessageSender?


    public init(
        botUserId: Int64?,
        customDescription: FormattedText?,
        verifiedId: MessageSender?
    ) {
        self.botUserId = botUserId
        self.customDescription = customDescription
        self.verifiedId = verifiedId
    }
}

