//
//  GiftForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a gift available for resale
public struct GiftForResale: Codable, Equatable, Hashable {

    /// The gift
    public let gift: UpgradedGift

    /// Unique identifier of the received gift for the current user; only for the gifts owned by the current user
    public let receivedGiftId: String


    public init(
        gift: UpgradedGift,
        receivedGiftId: String
    ) {
        self.gift = gift
        self.receivedGiftId = receivedGiftId
    }
}

