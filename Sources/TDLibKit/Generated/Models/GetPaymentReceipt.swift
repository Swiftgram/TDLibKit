//
//  GetPaymentReceipt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Returns information about a successful payment
public struct GetPaymentReceipt: Codable, Equatable, Hashable {

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

