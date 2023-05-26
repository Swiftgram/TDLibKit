//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-54b34e91
//  https://github.com/tdlib/td/tree/54b34e91
//

import Foundation


/// Informs server about a purchase through Google Play. For official applications only
public struct AssignGooglePlayTransaction: Codable, Equatable {

    /// Application package name
    public let packageName: String?

    /// Google Play purchase token
    public let purchaseToken: String?

    /// Transaction purpose
    public let purpose: StorePaymentPurpose?

    /// Identifier of the purchased store product
    public let storeProductId: String?


    public init(
        packageName: String?,
        purchaseToken: String?,
        purpose: StorePaymentPurpose?,
        storeProductId: String?
    ) {
        self.packageName = packageName
        self.purchaseToken = purchaseToken
        self.purpose = purpose
        self.storeProductId = storeProductId
    }
}

