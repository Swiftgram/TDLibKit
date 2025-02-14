//
//  PaymentReceiptType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Describes type of successful payment
public indirect enum PaymentReceiptType: Codable, Equatable, Hashable {

    /// The payment was done using a third-party payment provider
    case paymentReceiptTypeRegular(PaymentReceiptTypeRegular)

    /// The payment was done using Telegram Stars
    case paymentReceiptTypeStars(PaymentReceiptTypeStars)


    private enum Kind: String, Codable {
        case paymentReceiptTypeRegular
        case paymentReceiptTypeStars
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .paymentReceiptTypeRegular:
            let value = try PaymentReceiptTypeRegular(from: decoder)
            self = .paymentReceiptTypeRegular(value)
        case .paymentReceiptTypeStars:
            let value = try PaymentReceiptTypeStars(from: decoder)
            self = .paymentReceiptTypeStars(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .paymentReceiptTypeRegular(let value):
            try container.encode(Kind.paymentReceiptTypeRegular, forKey: .type)
            try value.encode(to: encoder)
        case .paymentReceiptTypeStars(let value):
            try container.encode(Kind.paymentReceiptTypeStars, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The payment was done using a third-party payment provider
public struct PaymentReceiptTypeRegular: Codable, Equatable, Hashable {

    /// Title of the saved credentials chosen by the buyer
    public let credentialsTitle: String

    /// Information about the invoice
    public let invoice: Invoice

    /// Order information; may be null
    public let orderInfo: OrderInfo?

    /// User identifier of the payment provider bot
    public let paymentProviderUserId: Int64

    /// Chosen shipping option; may be null
    public let shippingOption: ShippingOption?

    /// The amount of tip chosen by the buyer in the smallest units of the currency
    public let tipAmount: Int64


    public init(
        credentialsTitle: String,
        invoice: Invoice,
        orderInfo: OrderInfo?,
        paymentProviderUserId: Int64,
        shippingOption: ShippingOption?,
        tipAmount: Int64
    ) {
        self.credentialsTitle = credentialsTitle
        self.invoice = invoice
        self.orderInfo = orderInfo
        self.paymentProviderUserId = paymentProviderUserId
        self.shippingOption = shippingOption
        self.tipAmount = tipAmount
    }
}

/// The payment was done using Telegram Stars
public struct PaymentReceiptTypeStars: Codable, Equatable, Hashable {

    /// Number of Telegram Stars that were paid
    public let starCount: Int64

    /// Unique identifier of the transaction that can be used to dispute it
    public let transactionId: String


    public init(
        starCount: Int64,
        transactionId: String
    ) {
        self.starCount = starCount
        self.transactionId = transactionId
    }
}

