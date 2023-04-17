//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

