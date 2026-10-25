//
//  InputTonWalletCardSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Describes a sticker to be placed on the TON wallet card of the current user
public struct InputTonWalletCardSticker: Codable, Equatable, Hashable {

    /// Address of an NFT owned by the wallet, which is an upgraded gift; use getTonWalletNfts to get the list of owned NFTs
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

