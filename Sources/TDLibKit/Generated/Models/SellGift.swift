//
//  SellGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Sells a gift received by the current user for Telegram Stars
public struct SellGift: Codable, Equatable, Hashable {

    /// Identifier of the message with the gift in the chat with the user
    public let messageId: Int64?

    /// Identifier of the user that sent the gift
    public let senderUserId: Int64?


    public init(
        messageId: Int64?,
        senderUserId: Int64?
    ) {
        self.messageId = messageId
        self.senderUserId = senderUserId
    }
}

