//
//  GetTonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Returns a TON wallet transaction by their identifier
public struct GetTonWalletTransaction: Codable, Equatable, Hashable {

    /// Identifier of the transaction
    public let transactionId: String?


    public init(transactionId: String?) {
        self.transactionId = transactionId
    }
}

