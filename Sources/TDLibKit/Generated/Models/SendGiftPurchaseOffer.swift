//
//  SendGiftPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Sends an offer to purchase an upgraded gift
public struct SendGiftPurchaseOffer: Codable, Equatable, Hashable {

    /// Duration of the offer, in seconds; must be one of 21600, 43200, 86400, 129600, 172800, or 259200. Can also be 120 if Telegram test environment is used
    public let duration: Int?

    /// Name of the upgraded gift
    public let giftName: String?

    /// Identifier of the user or the channel chat that currently owns the gift and will receive the offer
    public let ownerId: MessageSender?

    /// The number of Telegram Stars the user agreed to pay additionally for sending of the offer message to the current gift owner; pass userFullInfo.outgoing_paid_message_star_count for users and 0 otherwise
    public let paidMessageStarCount: Int64?

    /// The price that the user agreed to pay for the gift
    public let price: GiftResalePrice?


    public init(
        duration: Int?,
        giftName: String?,
        ownerId: MessageSender?,
        paidMessageStarCount: Int64?,
        price: GiftResalePrice?
    ) {
        self.duration = duration
        self.giftName = giftName
        self.ownerId = ownerId
        self.paidMessageStarCount = paidMessageStarCount
        self.price = price
    }
}

