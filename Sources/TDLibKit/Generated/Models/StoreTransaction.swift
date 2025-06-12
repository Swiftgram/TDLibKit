//
//  StoreTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Describes an in-store transaction
public indirect enum StoreTransaction: Codable, Equatable, Hashable {

    /// A purchase through App Store
    case storeTransactionAppStore(StoreTransactionAppStore)

    /// A purchase through Google Play
    case storeTransactionGooglePlay(StoreTransactionGooglePlay)


    private enum Kind: String, Codable {
        case storeTransactionAppStore
        case storeTransactionGooglePlay
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storeTransactionAppStore:
            let value = try StoreTransactionAppStore(from: decoder)
            self = .storeTransactionAppStore(value)
        case .storeTransactionGooglePlay:
            let value = try StoreTransactionGooglePlay(from: decoder)
            self = .storeTransactionGooglePlay(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storeTransactionAppStore(let value):
            try container.encode(Kind.storeTransactionAppStore, forKey: .type)
            try value.encode(to: encoder)
        case .storeTransactionGooglePlay(let value):
            try container.encode(Kind.storeTransactionGooglePlay, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A purchase through App Store
public struct StoreTransactionAppStore: Codable, Equatable, Hashable {

    /// App Store receipt
    public let receipt: Data


    public init(receipt: Data) {
        self.receipt = receipt
    }
}

/// A purchase through Google Play
public struct StoreTransactionGooglePlay: Codable, Equatable, Hashable {

    /// Application package name
    public let packageName: String

    /// Google Play purchase token
    public let purchaseToken: String

    /// Identifier of the purchased store product
    public let storeProductId: String


    public init(
        packageName: String,
        purchaseToken: String,
        storeProductId: String
    ) {
        self.packageName = packageName
        self.purchaseToken = purchaseToken
        self.storeProductId = storeProductId
    }
}

