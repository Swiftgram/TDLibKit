//
//  GiftOnChainPurchaseOfferTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains information about a transaction that must be sent from the TON wallet of the current user to send, accept, or cancel an on-chain gift purchase offer. Use sendTonWalletTransaction with regular_transaction_data and gasless_transaction_data created from message and gasless_message respectively to send the transaction. Successful sending of the transaction doesn't mean that the operation was completed; the result of the operation must be checked in the corresponding messageUpgradedGiftOnChainPurchaseOffer message in the chat 777000
public struct GiftOnChainPurchaseOfferTransaction: Codable, Equatable, Hashable {

    /// The amount included in the message for execution of the offer smart contract, in the smallest units of TON Grams; 0 if none
    public let executionAllowanceAmount: TdInt64

    /// Point in time (Unix timestamp) when the offer will expire
    public let expirationDate: Int

    /// The expected fine for cancellation of the offer, in the smallest units of TON Grams; 0 if none. The final fine will be known after the cancellation is executed on the TON blockchain
    public let fineAmount: TdInt64

    /// The amount forwarded with the gift transfer on acceptance of the offer, in the smallest units of TON Grams; 0 if none
    public let forwardAmount: TdInt64

    /// The message that must be sent for a gasless transfer; may be null if gasless transfer isn't available
    public let gaslessMessage: TonWalletMessage?

    /// The message that must be sent for a regular transfer
    public let message: TonWalletMessage

    /// Address of the smart contract of the offer on the TON blockchain
    public let offerAddress: String

    /// The amount included in the message for rent of the offer smart contract, in the smallest units of TON Grams; 0 if none
    public let rentBudgetAmount: TdInt64


    public init(
        executionAllowanceAmount: TdInt64,
        expirationDate: Int,
        fineAmount: TdInt64,
        forwardAmount: TdInt64,
        gaslessMessage: TonWalletMessage?,
        message: TonWalletMessage,
        offerAddress: String,
        rentBudgetAmount: TdInt64
    ) {
        self.executionAllowanceAmount = executionAllowanceAmount
        self.expirationDate = expirationDate
        self.fineAmount = fineAmount
        self.forwardAmount = forwardAmount
        self.gaslessMessage = gaslessMessage
        self.message = message
        self.offerAddress = offerAddress
        self.rentBudgetAmount = rentBudgetAmount
    }
}

