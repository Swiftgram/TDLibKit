//
//  DeclineGiftOnChainPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Declines an on-chain gift purchase offer received by the current user. The offer is declined and the buyer is refunded only after the offer is canceled on the TON blockchain
public struct DeclineGiftOnChainPurchaseOffer: Codable, Equatable, Hashable {

    /// Identifier of the message messageUpgradedGiftOnChainPurchaseOffer with the offer in the chat 777000
    public let messageId: Int64?


    public init(messageId: Int64?) {
        self.messageId = messageId
    }
}

