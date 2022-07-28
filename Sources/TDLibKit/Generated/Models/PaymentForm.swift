//
//  PaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about an invoice payment form
public struct PaymentForm: Codable, Equatable {

    /// True, if the user can choose to save credentials
    public let canSaveCredentials: Bool

    /// The payment form identifier
    public let id: TdInt64

    /// Full information about the invoice
    public let invoice: Invoice

    /// True, if the user will be able to save credentials protected by a password they set up
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

    /// Information about saved card credentials; may be null
    public let savedCredentials: SavedCredentials?

    /// Saved server-side order information; may be null
    public let savedOrderInfo: OrderInfo?

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64


    public init(
        canSaveCredentials: Bool,
        id: TdInt64,
        invoice: Invoice,
        needPassword: Bool,
        paymentProvider: PaymentProvider,
        paymentProviderUserId: Int64,
        productDescription: FormattedText,
        productPhoto: Photo?,
        productTitle: String,
        savedCredentials: SavedCredentials?,
        savedOrderInfo: OrderInfo?,
        sellerBotUserId: Int64
    ) {
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

