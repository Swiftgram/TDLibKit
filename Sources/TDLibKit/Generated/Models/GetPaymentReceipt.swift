//
//  GetPaymentReceipt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Returns information about a successful payment
public struct GetPaymentReceipt: Codable, Equatable {

    /// Chat identifier of the messagePaymentSuccessful message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

