//
//  UpgradedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes an upgraded gift that can be gifted to another user or transferred to TON blockchain as an NFT
public struct UpgradedGift: Codable, Equatable, Hashable, Identifiable {

    /// Backdrop of the upgraded gift
    public let backdrop: UpgradedGiftBackdrop

    /// Unique identifier of the gift
    public let id: TdInt64

    /// The maximum number of gifts that can be upgraded from the same gift
    public let maxUpgradedCount: Int

    /// Model of the upgraded gift
    public let model: UpgradedGiftModel

    /// Unique number of the upgraded gift among gifts upgraded from the same gift
    public let number: Int

    /// Information about the originally sent gift; may be null if unknown
    public let originalDetails: UpgradedGiftOriginalDetails?

    /// User identifier of the user that owns the upgraded gift; 0 if none
    public let ownerUserId: Int64

    /// Symbol of the upgraded gift
    public let symbol: UpgradedGiftSymbol

    /// The title of the upgraded gift
    public let title: String

    /// Total number of gifts that were upgraded from the same gift
    public let totalUpgradedCount: Int


    public init(
        backdrop: UpgradedGiftBackdrop,
        id: TdInt64,
        maxUpgradedCount: Int,
        model: UpgradedGiftModel,
        number: Int,
        originalDetails: UpgradedGiftOriginalDetails?,
        ownerUserId: Int64,
        symbol: UpgradedGiftSymbol,
        title: String,
        totalUpgradedCount: Int
    ) {
        self.backdrop = backdrop
        self.id = id
        self.maxUpgradedCount = maxUpgradedCount
        self.model = model
        self.number = number
        self.originalDetails = originalDetails
        self.ownerUserId = ownerUserId
        self.symbol = symbol
        self.title = title
        self.totalUpgradedCount = totalUpgradedCount
    }
}

