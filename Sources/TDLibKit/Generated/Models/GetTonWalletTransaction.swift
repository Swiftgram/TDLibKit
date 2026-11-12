//
//  GetTonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

