//
//  GetPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy
public struct GetPaymentForm: Codable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// Preferred payment form theme
    public let theme: PaymentFormTheme


    public init(
        chatId: Int64,
        messageId: Int64,
        theme: PaymentFormTheme
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.theme = theme
    }
}

