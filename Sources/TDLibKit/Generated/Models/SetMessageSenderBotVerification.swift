//
//  SetMessageSenderBotVerification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes the verification status of a user or a chat by an owned bot
public struct SetMessageSenderBotVerification: Codable, Equatable, Hashable {

    /// Identifier of the owned bot, which will verify the user or the chat
    public let botUserId: Int64?

    /// Custom description of verification reason; 0-getOption("bot_verification_custom_description_length_max"). If empty, then "was verified by organization "organization_name"" will be used as description. Can be specified only if the bot is allowed to provide custom description
    public let customDescription: String?

    /// Identifier of the user or the supergroup or channel chat, which will be verified by the bot
    public let verifiedId: MessageSender?


    public init(
        botUserId: Int64?,
        customDescription: String?,
        verifiedId: MessageSender?
    ) {
        self.botUserId = botUserId
        self.customDescription = customDescription
        self.verifiedId = verifiedId
    }
}

