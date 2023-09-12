//
//  CanPurchasePremium.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
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

