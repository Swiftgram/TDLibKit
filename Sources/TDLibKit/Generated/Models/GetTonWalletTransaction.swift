//
//  GetTonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
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

