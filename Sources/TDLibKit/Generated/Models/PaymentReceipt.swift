//
//  PaymentReceipt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Contains information about a successful payment
public struct PaymentReceipt: Codable {

    /// Title of the saved credentials chosen by the buyer
    public let credentialsTitle: String

    /// Point in time (Unix timestamp) when the payment was made
    public let date: Int

    public let description: String

    /// Information about the invoice
    public let invoice: Invoice

    /// Order information; may be null
    public let orderInfo: OrderInfo?

    /// User identifier of the payment provider bot
    public let paymentsProviderUserId: Int64

    /// Product photo; may be null
    public let photo: Photo?

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64

    /// Chosen shipping option; may be null
    public let shippingOption: ShippingOption?

    /// The amount of tip chosen by the buyer in the smallest units of the currency
    public let tipAmount: Int64

    /// Product title
    public let title: String


    public init(
        credentialsTitle: String,
        date: Int,
        description: String,
        invoice: Invoice,
        orderInfo: OrderInfo?,
        paymentsProviderUserId: Int64,
        photo: Photo?,
        sellerBotUserId: Int64,
        shippingOption: ShippingOption?,
        tipAmount: Int64,
        title: String
    ) {
        self.credentialsTitle = credentialsTitle
        self.date = date
        self.description = description
        self.invoice = invoice
        self.orderInfo = orderInfo
        self.paymentsProviderUserId = paymentsProviderUserId
        self.photo = photo
        self.sellerBotUserId = sellerBotUserId
        self.shippingOption = shippingOption
        self.tipAmount = tipAmount
        self.title = title
    }
}

