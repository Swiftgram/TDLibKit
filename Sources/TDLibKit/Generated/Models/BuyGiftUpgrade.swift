//
//  BuyGiftUpgrade.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Pays for upgrade of a regular gift that is owned by another user or channel chat
public struct BuyGiftUpgrade: Codable, Equatable, Hashable {

    /// Identifier of the user or the channel chat that owns the gift
    public let ownerId: MessageSender?

    /// Prepaid upgrade hash as received along with the gift
    public let prepaidUpgradeHash: String?

    /// The amount of Telegram Stars the user agreed to pay for the upgrade; must be equal to gift.upgrade_star_count
    public let starCount: Int64?


    public init(
        ownerId: MessageSender?,
        prepaidUpgradeHash: String?,
        starCount: Int64?
    ) {
        self.ownerId = ownerId
        self.prepaidUpgradeHash = prepaidUpgradeHash
        self.starCount = starCount
    }
}

