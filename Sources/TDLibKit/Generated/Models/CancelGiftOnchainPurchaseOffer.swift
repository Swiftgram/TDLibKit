//
//  CancelGiftOnChainPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Cancels an on-chain gift purchase offer sent by the current user; can be used only if getOption("can_use_ton_wallet"). A fine may be charged if the offer is canceled before it expires. Returns the transaction that must be sent from the TON wallet of the current user to cancel the offer. The offer is canceled only after the transaction is executed on the TON blockchain
public struct CancelGiftOnChainPurchaseOffer: Codable, Equatable, Hashable {

    /// Identifier of the message messageUpgradedGiftOnChainPurchaseOffer with the offer in the chat 777000
    public let messageId: Int64?


    public init(messageId: Int64?) {
        self.messageId = messageId
    }
}

