//
//  InputTonWalletCardSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Describes a sticker to be placed on the TON wallet card of the current user
public struct InputTonWalletCardSticker: Codable, Equatable, Hashable {

    /// Address of an NFT from a Telegram gift collection owned by the wallet; use getTonWalletNfts to get the list of owned NFTs. The NFT must not be used as a gift shown on the profile page
    public let nftAddress: String

    /// Position of the sticker on the card
    public let position: AreaPosition


    public init(
        nftAddress: String,
        position: AreaPosition
    ) {
        self.nftAddress = nftAddress
        self.position = position
    }
}

