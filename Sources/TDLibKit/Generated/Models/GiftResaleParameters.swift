//
//  GiftResaleParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes parameters of a unique gift available for resale
public struct GiftResaleParameters: Codable, Equatable, Hashable {

    /// True, if the sale of the gift is managed by the current user. If upgradedGift.uses_onchain_resale is true, then the sale can be canceled using getGiftOnchainDelistingTransaction, and the price can be changed using getGiftOnchainListingTransaction if is_fixed_onchain is true. Otherwise, the price can be changed and the sale can be canceled using setGiftResalePrice
    public let canBeManaged: Bool

    /// Exact resale price of the gift, in the smallest units of TON Grams; must be passed to getGiftOnchainPurchaseTransaction if upgradedGift.uses_onchain_resale is true
    public let gramAmount: TdInt64

    /// Resale price of the gift in 1/100 of a TON Gram
    public let gramCentCount: Int64

    /// True, if the gift can be bought only using Grams
    public let gramOnly: Bool

    /// True, if the gift is sold on-chain using a fixed-price sale contract
    public let isFixedOnchain: Bool

    /// Resale price of the gift in Telegram Stars
    public let starCount: Int64


    public init(
        canBeManaged: Bool,
        gramAmount: TdInt64,
        gramCentCount: Int64,
        gramOnly: Bool,
        isFixedOnchain: Bool,
        starCount: Int64
    ) {
        self.canBeManaged = canBeManaged
        self.gramAmount = gramAmount
        self.gramCentCount = gramCentCount
        self.gramOnly = gramOnly
        self.isFixedOnchain = isFixedOnchain
        self.starCount = starCount
    }
}

