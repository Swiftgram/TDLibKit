//
//  DeleteEphemeralMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Deletes an ephemeral message; for bots only
public struct DeleteEphemeralMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the message to be deleted
    public let ephemeralMessageId: Int?

    /// Identifier of the user who received the message
    public let receiverUserId: Int64?


    public init(
        chatId: Int64?,
        ephemeralMessageId: Int?,
        receiverUserId: Int64?
    ) {
        self.chatId = chatId
        self.ephemeralMessageId = ephemeralMessageId
        self.receiverUserId = receiverUserId
    }
}

