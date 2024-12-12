//
//  PaymentFormType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Describes type of payment form
public indirect enum PaymentFormType: Codable, Equatable, Hashable {

    /// The payment form is for a regular payment
    case paymentFormTypeRegular(PaymentFormTypeRegular)

    /// The payment form is for a payment in Telegram Stars
    case paymentFormTypeStars(PaymentFormTypeStars)

    /// The payment form is for a payment in Telegram Stars for subscription
    case paymentFormTypeStarSubscription(PaymentFormTypeStarSubscription)


    private enum Kind: String, Codable {
        case paymentFormTypeRegular
        case paymentFormTypeStars
        case paymentFormTypeStarSubscription
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .paymentFormTypeRegular:
            let value = try PaymentFormTypeRegular(from: decoder)
            self = .paymentFormTypeRegular(value)
        case .paymentFormTypeStars:
            let value = try PaymentFormTypeStars(from: decoder)
            self = .paymentFormTypeStars(value)
        case .paymentFormTypeStarSubscription:
            let value = try PaymentFormTypeStarSubscription(from: decoder)
            self = .paymentFormTypeStarSubscription(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .paymentFormTypeRegular(let value):
            try container.encode(Kind.paymentFormTypeRegular, forKey: .type)
            try value.encode(to: encoder)
        case .paymentFormTypeStars(let value):
            try container.encode(Kind.paymentFormTypeStars, forKey: .type)
            try value.encode(to: encoder)
        case .paymentFormTypeStarSubscription(let value):
            try container.encode(Kind.paymentFormTypeStarSubscription, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The payment form is for a regular payment
public struct PaymentFormTypeRegular: Codable, Equatable, Hashable {

    /// The list of additional payment options
    public let additionalPaymentOptions: [PaymentOption]

    /// True, if the user can choose to save credentials
    public let canSaveCredentials: Bool

    /// Full information about the invoice
    public let invoice: Invoice

    /// True, if the user will be able to save credentials, if sets up a 2-step verification password
    public let needPassword: Bool

    /// Information about the payment provider
    public let paymentProvider: PaymentProvider

    /// User identifier of the payment provider bot
    public let paymentProviderUserId: Int64

    /// The list of saved payment credentials
    public let savedCredentials: [SavedCredentials]

    /// Saved server-side order information; may be null
    public let savedOrderInfo: OrderInfo?


    public init(
        additionalPaymentOptions: [PaymentOption],
        canSaveCredentials: Bool,
        invoice: Invoice,
        needPassword: Bool,
        paymentProvider: PaymentProvider,
        paymentProviderUserId: Int64,
        savedCredentials: [SavedCredentials],
        savedOrderInfo: OrderInfo?
    ) {
        self.additionalPaymentOptions = additionalPaymentOptions
        self.canSaveCredentials = canSaveCredentials
        self.invoice = invoice
        self.needPassword = needPassword
        self.paymentProvider = paymentProvider
        self.paymentProviderUserId = paymentProviderUserId
        self.savedCredentials = savedCredentials
        self.savedOrderInfo = savedOrderInfo
    }
}

/// The payment form is for a payment in Telegram Stars
public struct PaymentFormTypeStars: Codable, Equatable, Hashable {

    /// Number of Telegram Stars that will be paid
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

/// The payment form is for a payment in Telegram Stars for subscription
public struct PaymentFormTypeStarSubscription: Codable, Equatable, Hashable {

    /// Information about subscription plan
    public let pricing: StarSubscriptionPricing


    public init(pricing: StarSubscriptionPricing) {
        self.pricing = pricing
    }
}

