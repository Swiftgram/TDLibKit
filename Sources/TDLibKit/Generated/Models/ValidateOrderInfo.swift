//
//  ValidateOrderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3edf14b6
//  https://github.com/tdlib/td/tree/3edf14b6
//

import Foundation


/// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
public struct ValidateOrderInfo: Codable, Equatable {

    /// Pass true to save the order information
    public let allowSave: Bool?

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// The order information, provided by the user; pass null if empty
    public let orderInfo: OrderInfo?


    public init(
        allowSave: Bool?,
        chatId: Int64?,
        messageId: Int64?,
        orderInfo: OrderInfo?
    ) {
        self.allowSave = allowSave
        self.chatId = chatId
        self.messageId = messageId
        self.orderInfo = orderInfo
    }
}

