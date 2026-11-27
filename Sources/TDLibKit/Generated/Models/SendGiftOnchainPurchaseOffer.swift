//
//  SendGiftOnChainPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Sends an on-chain offer to purchase an upgraded gift for TON Grams; can be used only if getOption("can_use_ton_wallet"). Returns the transaction that must be sent from the TON wallet of the current user to create the offer. The offer is created only after the transaction is executed on the TON blockchain
public struct SendGiftOnChainPurchaseOffer: Codable, Equatable, Hashable {

    /// Duration of the offer, in seconds; must be one of 21600, 43200, 86400, 129600, 172800, or 259200
    public let duration: Int?

    /// Name of the upgraded gift
    public let giftName: String?

    /// The price offered for the gift, in the smallest units of TON Grams; must be at least upgradedGift.min_on_chain_purchase_offer_gram_amount
    public let gramAmount: TdInt64?


    public init(
        duration: Int?,
        giftName: String?,
        gramAmount: TdInt64?
    ) {
        self.duration = duration
        self.giftName = giftName
        self.gramAmount = gramAmount
    }
}

