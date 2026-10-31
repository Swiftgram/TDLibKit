//
//  TonNfts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Represents a list of TON NFTs
public struct TonNfts: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of NFTs
    public let nfts: [TonNft]


    public init(
        nextOffset: String,
        nfts: [TonNft]
    ) {
        self.nextOffset = nextOffset
        self.nfts = nfts
    }
}

