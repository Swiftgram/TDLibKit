//
//  CanPurchaseFromStore.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Checks whether an in-store purchase is possible. Must be called before any in-store purchase. For official applications only
public struct CanPurchaseFromStore: Codable, Equatable, Hashable {

    /// Transaction purpose
    public let purpose: StorePaymentPurpose?


    public init(purpose: StorePaymentPurpose?) {
        self.purpose = purpose
    }
}

