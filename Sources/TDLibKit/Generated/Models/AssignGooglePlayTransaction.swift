//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
//

import Foundation


/// Informs server about a purchase through Google Play. For official applications only
public struct AssignGooglePlayTransaction: Codable, Equatable, Hashable {

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

