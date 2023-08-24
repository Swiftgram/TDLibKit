//
//  CanPurchasePremium.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-470c36ce
//  https://github.com/tdlib/td/tree/470c36ce
//

import Foundation


/// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase
public struct CanPurchasePremium: Codable, Equatable, Hashable {

    /// Transaction purpose
    public let purpose: StorePaymentPurpose?


    public init(purpose: StorePaymentPurpose?) {
        self.purpose = purpose
    }
}

