//
//  TonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Represents a transaction with the TON wallet of the current user
public struct TonWalletTransaction: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the transaction was completed
    public let date: Int

    /// The fee amount paid for the transaction in TON Grams, in the smallest units of the cryptocurrency
    public let feeAmount: Int64

    /// Unique identifier of the transaction
    public let id: String

    /// Address in the TON blockchain of the transaction peer; may be empty if the transaction isn't a wallet transfer
    public let peerAddress: String

    /// Identifier of the domain assigned to the peer address; may be empty if none
    public let peerDomain: String

    /// Identifier of the other user who participated in the transaction; 0 if unknown
    public let peerUserId: Int64

    /// State of the transaction
    public let state: TonWalletTransactionState

    /// Type of the transaction
    public let type: TonWalletTransactionType


    public init(
        date: Int,
        feeAmount: Int64,
        id: String,
        peerAddress: String,
        peerDomain: String,
        peerUserId: Int64,
        state: TonWalletTransactionState,
        type: TonWalletTransactionType
    ) {
        self.date = date
        self.feeAmount = feeAmount
        self.id = id
        self.peerAddress = peerAddress
        self.peerDomain = peerDomain
        self.peerUserId = peerUserId
        self.state = state
        self.type = type
    }
}

