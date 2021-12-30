//
//  GetPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
public struct GetPaymentForm: Codable, Equatable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// Preferred payment form theme; pass null to use the default theme
    public let theme: PaymentFormTheme?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        theme: PaymentFormTheme?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.theme = theme
    }
}

