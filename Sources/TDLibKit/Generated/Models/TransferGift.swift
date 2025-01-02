//
//  TransferGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Sends a gift upgraded by the current user to another user
public struct TransferGift: Codable, Equatable, Hashable {

    /// Identifier of the message with the upgraded gift in the chat with the user
    public let messageId: Int64?

    /// Identifier of the user that will receive the gift
    public let receiverUserId: Int64?

    /// Identifier of the user that sent the gift
    public let senderUserId: Int64?

    /// The amount of Telegram Stars required for the transfer
    public let starCount: Int64?


    public init(
        messageId: Int64?,
        receiverUserId: Int64?,
        senderUserId: Int64?,
        starCount: Int64?
    ) {
        self.messageId = messageId
        self.receiverUserId = receiverUserId
        self.senderUserId = senderUserId
        self.starCount = starCount
    }
}

