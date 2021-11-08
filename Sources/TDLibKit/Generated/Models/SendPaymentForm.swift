//
//  SendPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-911c5fc3
//  https://github.com/tdlib/td/tree/911c5fc3
//

import Foundation


/// Sends a filled-out payment form to the bot for final verification
public struct SendPaymentForm: Codable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// The credentials chosen by user for payment
    public let credentials: InputCredentials?

    /// Message identifier
    public let messageId: Int64?

    /// Identifier returned by validateOrderInfo, or an empty string
    public let orderInfoId: String?

    /// Payment form identifier returned by getPaymentForm
    public let paymentFormId: TdInt64?

    /// Identifier of a chosen shipping option, if applicable
    public let shippingOptionId: String?

    /// Chosen by the user amount of tip in the smallest units of the currency
    public let tipAmount: Int64?


    public init(
        chatId: Int64?,
        credentials: InputCredentials?,
        messageId: Int64?,
        orderInfoId: String?,
        paymentFormId: TdInt64?,
        shippingOptionId: String?,
        tipAmount: Int64?
    ) {
        self.chatId = chatId
        self.credentials = credentials
        self.messageId = messageId
        self.orderInfoId = orderInfoId
        self.paymentFormId = paymentFormId
        self.shippingOptionId = shippingOptionId
        self.tipAmount = tipAmount
    }
}

