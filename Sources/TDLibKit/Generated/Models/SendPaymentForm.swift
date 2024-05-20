//
//  SendPaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends a filled-out payment form to the bot for final verification
public struct SendPaymentForm: Codable, Equatable, Hashable {

    /// The credentials chosen by user for payment
    public let credentials: InputCredentials?

    /// The invoice
    public let inputInvoice: InputInvoice?

    /// Identifier returned by validateOrderInfo, or an empty string
    public let orderInfoId: String?

    /// Payment form identifier returned by getPaymentForm
    public let paymentFormId: TdInt64?

    /// Identifier of a chosen shipping option, if applicable
    public let shippingOptionId: String?

    /// Chosen by the user amount of tip in the smallest units of the currency
    public let tipAmount: Int64?


    public init(
        credentials: InputCredentials?,
        inputInvoice: InputInvoice?,
        orderInfoId: String?,
        paymentFormId: TdInt64?,
        shippingOptionId: String?,
        tipAmount: Int64?
    ) {
        self.credentials = credentials
        self.inputInvoice = inputInvoice
        self.orderInfoId = orderInfoId
        self.paymentFormId = paymentFormId
        self.shippingOptionId = shippingOptionId
        self.tipAmount = tipAmount
    }
}

