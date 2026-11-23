//
//  SendTonWalletTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Sends a transaction signed by the application from the TON wallet of the current user without adding a message about it to any chat; can be used only if getOption("can_use_ton_wallet"). Use the method to send transactions described by upgradedGiftDepositInfo, giftOnchainPurchaseOfferTransaction, and GiftOnchainSaleTransaction objects
public struct SendTonWalletTransaction: Codable, Equatable, Hashable {

    /// Serialized signed data for a gasless transaction; pass an empty string to force a regular transaction
    public let gaslessTransactionData: Data?

    /// Serialized signed data for a regular transaction
    public let regularTransactionData: Data?


    public init(
        gaslessTransactionData: Data?,
        regularTransactionData: Data?
    ) {
        self.gaslessTransactionData = gaslessTransactionData
        self.regularTransactionData = regularTransactionData
    }
}

