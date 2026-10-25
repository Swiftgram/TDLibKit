//
//  OnRampPaymentAvailability.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Describes availability of cryptocurrency purchase through an on-ramp provider
public struct OnRampPaymentAvailability: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code of the current user's country
    public let countryCode: String

    /// True, if the current user can use the provider
    public let isAllowed: Bool

    /// True, if the current user can purchase through the provider
    public let isPurchaseAllowed: Bool

    /// The list of available payment methods
    public let methods: [OnRampPaymentMethod]

    /// Code of the state of the current user; may be empty if unknown
    public let state: String


    public init(
        countryCode: String,
        isAllowed: Bool,
        isPurchaseAllowed: Bool,
        methods: [OnRampPaymentMethod],
        state: String
    ) {
        self.countryCode = countryCode
        self.isAllowed = isAllowed
        self.isPurchaseAllowed = isPurchaseAllowed
        self.methods = methods
        self.state = state
    }
}

