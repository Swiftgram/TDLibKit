//
//  GetTonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Returns a TON wallet transaction by its identifier
public struct GetTonWalletTransaction: Codable, Equatable, Hashable {

    /// Identifier of the transaction
    public let transactionId: String?


    public init(transactionId: String?) {
        self.transactionId = transactionId
    }
}

