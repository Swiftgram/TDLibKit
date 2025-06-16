//
//  AssignStoreTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Informs server about an in-store purchase. For official applications only
public struct AssignStoreTransaction: Codable, Equatable, Hashable {

    /// Transaction purpose
    public let purpose: StorePaymentPurpose?

    /// Information about the transaction
    public let transaction: StoreTransaction?


    public init(
        purpose: StorePaymentPurpose?,
        transaction: StoreTransaction?
    ) {
        self.purpose = purpose
        self.transaction = transaction
    }
}

