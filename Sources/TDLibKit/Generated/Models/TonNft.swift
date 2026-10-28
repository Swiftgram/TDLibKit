//
//  TonNft.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Represents an NFT in the TON blockchain
public struct TonNft: Codable, Equatable, Hashable {

    /// Address of the NFT
    public let address: String

    /// Attributes of the NFT
    public let attributes: [TonNftAttribute]

    /// Address of the collection to which the NFT belongs; may be empty if unknown
    public let collectionAddress: String

    /// Content of the NFT; may be null if none
    public let content: Document?

    public let description: String

    /// Additional data about the NFT; may be null if none
    public let extra: JsonValue?

    /// The upgraded gift corresponding to the NFT; may be null if none. Information about the owner of the gift isn't available. Original details of the gift are available only to the sender and the receiver of the original gift
    public let gift: UpgradedGift?

    /// Image of the NFT; may be null if none
    public let image: PhotoSize?

    /// Index of the NFT among all NFTs from the collection as a decimal number
    public let index: String

    /// Name of the NFT
    public let name: String

    /// Address of the owner of the NFT
    public let ownerAddress: String

    /// Sticker of the NFT; may be null if none
    public let sticker: Sticker?

    /// Thumbnail of the NFT; may be null if none
    public let thumbnail: PhotoSize?


    public init(
        address: String,
        attributes: [TonNftAttribute],
        collectionAddress: String,
        content: Document?,
        description: String,
        extra: JsonValue?,
        gift: UpgradedGift?,
        image: PhotoSize?,
        index: String,
        name: String,
        ownerAddress: String,
        sticker: Sticker?,
        thumbnail: PhotoSize?
    ) {
        self.address = address
        self.attributes = attributes
        self.collectionAddress = collectionAddress
        self.content = content
        self.description = description
        self.extra = extra
        self.gift = gift
        self.image = image
        self.index = index
        self.name = name
        self.ownerAddress = ownerAddress
        self.sticker = sticker
        self.thumbnail = thumbnail
    }
}

