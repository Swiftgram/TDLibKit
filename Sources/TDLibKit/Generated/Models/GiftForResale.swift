//
//  GiftForResale.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

