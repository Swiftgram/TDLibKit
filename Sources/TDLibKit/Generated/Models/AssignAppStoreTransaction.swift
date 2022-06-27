//
//  AssignAppStoreTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-3dcafdc8
//  https://github.com/tdlib/td/tree/3dcafdc8
//

import Foundation


/// Informs server about a Telegram Premium purchase through App Store. For official applications only
public struct AssignAppStoreTransaction: Codable, Equatable {

    /// True, if this is restore of Premium purchase
    public let isRestore: Bool?

    /// App Store receipt
    public let receipt: Data?


    public init(
        isRestore: Bool?,
        receipt: Data?
    ) {
        self.isRestore = isRestore
        self.receipt = receipt
    }
}

