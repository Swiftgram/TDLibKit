//
//  AcceptGiftOnchainPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Accepts an on-chain gift purchase offer received by the current user; can be used only if getOption("can_use_ton_wallet"). The gift must not be listed for sale. Other offers for the gift will be canceled after the gift is sold. Returns the transaction that must be sent from the TON wallet of the current user to accept the offer. The offer is accepted only after the transaction is executed on the TON blockchain and the gift is transferred to the buyer
public struct AcceptGiftOnchainPurchaseOffer: Codable, Equatable, Hashable {

    /// Identifier of the message messageUpgradedGiftOnchainPurchaseOffer with the offer in the chat 777000
    public let messageId: Int64?


    public init(messageId: Int64?) {
        self.messageId = messageId
    }
}

