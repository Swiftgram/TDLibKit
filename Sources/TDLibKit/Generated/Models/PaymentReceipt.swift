//
//  PaymentReceipt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Contains information about a successful payment
public struct PaymentReceipt: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the payment was made
    public let date: Int

    /// Information about the product
    public let productInfo: ProductInfo

    /// User identifier of the seller bot
    public let sellerBotUserId: Int64

    /// Type of the payment receipt
    public let type: PaymentReceiptType


    public init(
        date: Int,
        productInfo: ProductInfo,
        sellerBotUserId: Int64,
        type: PaymentReceiptType
    ) {
        self.date = date
        self.productInfo = productInfo
        self.sellerBotUserId = sellerBotUserId
        self.type = type
    }
}

