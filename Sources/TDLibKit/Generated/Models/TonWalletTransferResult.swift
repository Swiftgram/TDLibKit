//
//  TonWalletTransferResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Represents result of cryptocurrency transfer from the current user's TON wallet
public struct TonWalletTransferResult: Codable, Equatable, Hashable {

    /// True, if the transfer is gasless
    public let isGasless: Bool

    /// Unique identifier of the sent message; use getTonWalletTransactionByMsgHash to poll information about the transaction
    public let msgHash: Data

    /// The completed transaction; may be null if the transaction is still pending
    public let transaction: TonWalletTransaction?


    public init(
        isGasless: Bool,
        msgHash: Data,
        transaction: TonWalletTransaction?
    ) {
        self.isGasless = isGasless
        self.msgHash = msgHash
        self.transaction = transaction
    }
}

