//
//  GetTonWalletNfts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Returns NFTs stored on the TON wallet of the user; can be used only if getOption("can_use_ton_wallet")
public struct GetTonWalletNfts: Codable, Equatable, Hashable {

    /// The maximum number of NFTs to be returned; must be positive and can't be greater than 20
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        limit: Int?,
        offset: String?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

