//
//  UpgradedGiftDepositInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains information needed to deposit an upgraded gift from the TON wallet of the current user to a Telegram account. The gift must be transferred by an internal message from the wallet to nft_address with gram_amount attached and with payload as the message body. Use sendTonWalletTransaction to send the message
public struct UpgradedGiftDepositInfo: Codable, Equatable, Hashable {

    /// The amount that must be attached to the message to cover fees, in the smallest units of TON Grams; the excess amount will be returned to the wallet
    public let gramAmount: TdInt64

    /// Address on the TON blockchain to which the message must be sent
    public let nftAddress: String

    /// Body of the NFT transfer message
    public let payload: Data


    public init(
        gramAmount: TdInt64,
        nftAddress: String,
        payload: Data
    ) {
        self.gramAmount = gramAmount
        self.nftAddress = nftAddress
        self.payload = payload
    }
}

