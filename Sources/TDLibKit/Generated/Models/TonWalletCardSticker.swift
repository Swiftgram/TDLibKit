//
//  TonWalletCardSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Describes a sticker on a TON wallet card
public struct TonWalletCardSticker: Codable, Equatable, Hashable {

    /// The NFT shown as the sticker. If nft.gift is non-null, then it is enough to draw the sticker and there is no need to download the media of the NFT
    public let nft: TonNft

    /// Position of the sticker on the card
    public let position: AreaPosition


    public init(
        nft: TonNft,
        position: AreaPosition
    ) {
        self.nft = nft
        self.position = position
    }
}

