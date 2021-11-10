//
//  PaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Contains information about an invoice payment form
public struct PaymentForm: Codable {

    /// True, if the user can choose to save credentials
    public let canSaveCredentials: Bool

    /// The payment form identifier
    public let id: TdInt64

    /// Full information of the invoice
    public let invoice: Invoice

    /// True, if the user will be able to save credentials protected by a password they set up
    public let needPassword: Bool

    /// Information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
    public let paymentsProvider: PaymentsProviderStripe?

    /// User identifier of the payment provider bot
    public let paymentsProviderUserId: Int64

    /// Information about saved card credentials; may be null
    public let savedCredentials: SavedCredentials?

    /// Saved server-side order information; may be null
    public let savedOrderInfo: OrderInfo?

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64

    /// Payment form URL
    public let url: String


    public init(
        canSaveCredentials: Bool,
        id: TdInt64,
        invoice: Invoice,
        needPassword: Bool,
        paymentsProvider: PaymentsProviderStripe?,
        paymentsProviderUserId: Int64,
        savedCredentials: SavedCredentials?,
        savedOrderInfo: OrderInfo?,
        sellerBotUserId: Int64,
        url: String
    ) {
        self.canSaveCredentials = canSaveCredentials
        self.id = id
        self.invoice = invoice
        self.needPassword = needPassword
        self.paymentsProvider = paymentsProvider
        self.paymentsProviderUserId = paymentsProviderUserId
        self.savedCredentials = savedCredentials
        self.savedOrderInfo = savedOrderInfo
        self.sellerBotUserId = sellerBotUserId
        self.url = url
    }
}

