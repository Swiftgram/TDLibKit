//
//  GetPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-047246f3
//  https://github.com/tdlib/td/tree/047246f3
//

import Foundation


/// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
public struct GetPaymentForm: Codable, Equatable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// Preferred payment form theme; pass null to use the default theme
    public let theme: ThemeParameters?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        theme: ThemeParameters?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.theme = theme
    }
}

