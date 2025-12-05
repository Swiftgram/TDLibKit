//
//  UpgradeGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Upgrades a regular gift
public struct UpgradeGift: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Pass true to keep the original gift text, sender and receiver in the upgraded gift
    public let keepOriginalDetails: Bool?

    /// Identifier of the gift
    public let receivedGiftId: String?

    /// The amount of Telegram Stars required to pay for the upgrade. It the gift has prepaid_upgrade_star_count > 0, then pass 0, otherwise, pass gift.upgrade_star_count
    public let starCount: Int64?


    public init(
        businessConnectionId: String?,
        keepOriginalDetails: Bool?,
        receivedGiftId: String?,
        starCount: Int64?
    ) {
        self.businessConnectionId = businessConnectionId
        self.keepOriginalDetails = keepOriginalDetails
        self.receivedGiftId = receivedGiftId
        self.starCount = starCount
    }
}

