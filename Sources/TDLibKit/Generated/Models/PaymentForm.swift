//
//  PaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about an invoice payment form
public struct PaymentForm: Codable, Equatable, Hashable, Identifiable {

    /// The list of additional payment options
    public let additionalPaymentOptions: [PaymentOption]

    /// True, if the user can choose to save credentials
    public let canSaveCredentials: Bool

    /// The payment form identifier
    public let id: TdInt64

    /// Full information about the invoice
    public let invoice: Invoice

    /// True, if the user will be able to save credentials, if sets up a 2-step verification password
    public let needPassword: Bool

    /// Information about the payment provider
    public let paymentProvider: PaymentProvider

    /// User identifier of the payment provider bot
    public let paymentProviderUserId: Int64

    /// Product description
    public let productDescription: FormattedText

    /// Product photo; may be null
    public let productPhoto: Photo?

    /// Product title
    public let productTitle: String

    /// The list of saved payment credentials
    public let savedCredentials: [SavedCredentials]

    /// Saved server-side order information; may be null
    public let savedOrderInfo: OrderInfo?

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64


    public init(
        additionalPaymentOptions: [PaymentOption],
        canSaveCredentials: Bool,
        id: TdInt64,
        invoice: Invoice,
        needPassword: Bool,
        paymentProvider: PaymentProvider,
        paymentProviderUserId: Int64,
        productDescription: FormattedText,
        productPhoto: Photo?,
        productTitle: String,
        savedCredentials: [SavedCredentials],
        savedOrderInfo: OrderInfo?,
        sellerBotUserId: Int64
    ) {
        self.additionalPaymentOptions = additionalPaymentOptions
        self.canSaveCredentials = canSaveCredentials
        self.id = id
        self.invoice = invoice
        self.needPassword = needPassword
        self.paymentProvider = paymentProvider
        self.paymentProviderUserId = paymentProviderUserId
        self.productDescription = productDescription
        self.productPhoto = productPhoto
        self.productTitle = productTitle
        self.savedCredentials = savedCredentials
        self.savedOrderInfo = savedOrderInfo
        self.sellerBotUserId = sellerBotUserId
    }
}

