//
//  RemoveMessageSenderBotVerification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Removes the verification status of a user or a chat by an owned bot
public struct RemoveMessageSenderBotVerification: Codable, Equatable, Hashable {

    /// Identifier of the owned bot, which verified the user or the chat
    public let botUserId: Int64?

    /// Identifier of the user or the supergroup or channel chat, which verification is removed
    public let verifiedId: MessageSender?


    public init(
        botUserId: Int64?,
        verifiedId: MessageSender?
    ) {
        self.botUserId = botUserId
        self.verifiedId = verifiedId
    }
}

