//
//  UpgradedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes an upgraded gift that can be transferred to another owner or transferred to the TON blockchain as an NFT
public struct UpgradedGift: Codable, Equatable, Hashable, Identifiable {

    /// Backdrop of the upgraded gift
    public let backdrop: UpgradedGiftBackdrop

    /// Address of the gift NFT in TON blockchain; may be empty if none. Append the address to getOption("ton_blockchain_explorer_url") to get a link with information about the address
    public let giftAddress: String

    /// Unique identifier of the gift
    public let id: TdInt64

    /// The maximum number of gifts that can be upgraded from the same gift
    public let maxUpgradedCount: Int

    /// Model of the upgraded gift
    public let model: UpgradedGiftModel

    /// Unique name of the upgraded gift that can be used with internalLinkTypeUpgradedGift or sendResoldGift
    public let name: String

    /// Unique number of the upgraded gift among gifts upgraded from the same gift
    public let number: Int

    /// Information about the originally sent gift; may be null if unknown
    public let originalDetails: UpgradedGiftOriginalDetails?

    /// Address of the gift NFT owner in TON blockchain; may be empty if none. Append the address to getOption("ton_blockchain_explorer_url") to get a link with information about the address
    public let ownerAddress: String

    /// Identifier of the user or the chat that owns the upgraded gift; may be null if none or unknown
    public let ownerId: MessageSender?

    /// Name of the owner for the case when owner identifier and address aren't known
    public let ownerName: String

    /// Number of Telegram Stars that must be paid to buy the gift and send it to someone else; 0 if resale isn't possible
    public let resaleStarCount: Int64

    /// Symbol of the upgraded gift
    public let symbol: UpgradedGiftSymbol

    /// The title of the upgraded gift
    public let title: String

    /// Total number of gifts that were upgraded from the same gift
    public let totalUpgradedCount: Int


    public init(
        backdrop: UpgradedGiftBackdrop,
        giftAddress: String,
        id: TdInt64,
        maxUpgradedCount: Int,
        model: UpgradedGiftModel,
        name: String,
        number: Int,
        originalDetails: UpgradedGiftOriginalDetails?,
        ownerAddress: String,
        ownerId: MessageSender?,
        ownerName: String,
        resaleStarCount: Int64,
        symbol: UpgradedGiftSymbol,
        title: String,
        totalUpgradedCount: Int
    ) {
        self.backdrop = backdrop
        self.giftAddress = giftAddress
        self.id = id
        self.maxUpgradedCount = maxUpgradedCount
        self.model = model
        self.name = name
        self.number = number
        self.originalDetails = originalDetails
        self.ownerAddress = ownerAddress
        self.ownerId = ownerId
        self.ownerName = ownerName
        self.resaleStarCount = resaleStarCount
        self.symbol = symbol
        self.title = title
        self.totalUpgradedCount = totalUpgradedCount
    }
}

