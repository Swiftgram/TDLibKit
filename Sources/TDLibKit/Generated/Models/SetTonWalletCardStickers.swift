//
//  SetTonWalletCardStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Changes the list of stickers on the TON wallet card of the current user; can be used only if getOption("can_use_ton_wallet"). The whole list of stickers is replaced. The request can take up to 20 seconds to complete, so it must be called only on explicit user action. Stickers are removed automatically if the corresponding NFT leaves the wallet or the wallet is replaced. Returns the updated card
public struct SetTonWalletCardStickers: Codable, Equatable, Hashable {

    /// Address of the NFT from the new list of stickers, whose colors will be used for the card background; pass an empty string to use the default background. The NFT must correspond to an upgraded gift with can_be_ton_wallet_card_background == true
    public let backgroundNftAddress: String?

    /// The new list of stickers; pass an empty list to remove all stickers. Up to 10 stickers can be added. Each NFT can be used only once
    public let stickers: [InputTonWalletCardSticker]?


    public init(
        backgroundNftAddress: String?,
        stickers: [InputTonWalletCardSticker]?
    ) {
        self.backgroundNftAddress = backgroundNftAddress
        self.stickers = stickers
    }
}

