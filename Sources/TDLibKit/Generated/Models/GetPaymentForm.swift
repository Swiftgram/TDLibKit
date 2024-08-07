//
//  GetPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Returns an invoice payment form. This method must be called when the user presses inline button of the type inlineKeyboardButtonTypeBuy, or wants to buy access to media in a messagePaidMedia message
public struct GetPaymentForm: Codable, Equatable, Hashable {

    /// The invoice
    public let inputInvoice: InputInvoice?

    /// Preferred payment form theme; pass null to use the default theme
    public let theme: ThemeParameters?


    public init(
        inputInvoice: InputInvoice?,
        theme: ThemeParameters?
    ) {
        self.inputInvoice = inputInvoice
        self.theme = theme
    }
}

