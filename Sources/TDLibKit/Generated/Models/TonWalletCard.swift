//
//  TonWalletCard.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Describes a TON wallet card, which is shown on the profile page of a user to everyone
public struct TonWalletCard: Codable, Equatable, Hashable {

    /// Address of the wallet
    public let address: String

    /// Address of the NFT from stickers, which colors must be used for the card background; may be empty if the default background must be used
    public let backgroundNftAddress: String

    /// Balance of the wallet, in the smallest units of the cryptocurrency; may be slightly outdated
    public let gramAmount: Int64

    /// Stickers placed on the card
    public let stickers: [TonWalletCardSticker]


    public init(
        address: String,
        backgroundNftAddress: String,
        gramAmount: Int64,
        stickers: [TonWalletCardSticker]
    ) {
        self.address = address
        self.backgroundNftAddress = backgroundNftAddress
        self.gramAmount = gramAmount
        self.stickers = stickers
    }
}

