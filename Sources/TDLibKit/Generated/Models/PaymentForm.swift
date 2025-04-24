//
//  PaymentForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Contains information about an invoice payment form
public struct PaymentForm: Codable, Equatable, Hashable, Identifiable {

    /// The payment form identifier
    public let id: TdInt64

    /// Information about the product
    public let productInfo: ProductInfo

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64

    /// Type of the payment form
    public let type: PaymentFormType


    public init(
        id: TdInt64,
        productInfo: ProductInfo,
        sellerBotUserId: Int64,
        type: PaymentFormType
    ) {
        self.id = id
        self.productInfo = productInfo
        self.sellerBotUserId = sellerBotUserId
        self.type = type
    }
}

