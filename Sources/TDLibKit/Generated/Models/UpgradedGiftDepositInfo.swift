//
//  UpgradedGiftDepositInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Contains information needed to deposit an upgraded gift from the TON wallet of the current user to a Telegram account. The gift must be transferred by an internal message from the wallet to nft_address with gram_amount attached and with payload as the message body
public struct UpgradedGiftDepositInfo: Codable, Equatable, Hashable {

    /// The amount of TON Grams that must be attached to the message to cover fees, in the smallest units of the cryptocurrency; excess amount will be returned to the wallet
    public let gramAmount: Int64

    /// Address in TON blockchain to which the message must be sent
    public let nftAddress: String

    /// Body of the NFT transfer message
    public let payload: Data


    public init(
        gramAmount: Int64,
        nftAddress: String,
        payload: Data
    ) {
        self.gramAmount = gramAmount
        self.nftAddress = nftAddress
        self.payload = payload
    }
}

