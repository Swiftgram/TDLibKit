//
//  GetTonWalletNfts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns NFTs stored on the TON wallet of the user; can be used only if getOption("can_use_ton_wallet"). The result also includes NFTs of the user that are put up for sale using a fixed-price sale contract
public struct GetTonWalletNfts: Codable, Equatable, Hashable {

    /// The maximum number of NFTs to be returned; must be positive and can't be greater than 20
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use an empty string to get the first chunk of results
    public let offset: String?


    public init(
        limit: Int?,
        offset: String?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

