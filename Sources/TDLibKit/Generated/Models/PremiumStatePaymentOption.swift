//
//  PremiumStatePaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an option for buying or upgrading Telegram Premium for self
public struct PremiumStatePaymentOption: Codable, Equatable, Hashable {

    /// True, if this is the currently used Telegram Premium subscription option
    public let isCurrent: Bool

    /// True, if the payment option can be used to upgrade the existing Telegram Premium subscription
    public let isUpgrade: Bool

    /// Identifier of the last in-store transaction for the currently used option
    public let lastTransactionId: String

    /// Information about the payment option
    public let paymentOption: PremiumPaymentOption


    public init(
        isCurrent: Bool,
        isUpgrade: Bool,
        lastTransactionId: String,
        paymentOption: PremiumPaymentOption
    ) {
        self.isCurrent = isCurrent
        self.isUpgrade = isUpgrade
        self.lastTransactionId = lastTransactionId
        self.paymentOption = paymentOption
    }
}

