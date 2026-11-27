//
//  GetGiftMintingUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns a URL for minting an upgraded gift as an NFT on the TON blockchain; requires owner privileges for gifts owned by a chat. The user must have a valid temporary password; see createTemporaryPassword
public struct GetGiftMintingUrl: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(receivedGiftId: String?) {
        self.receivedGiftId = receivedGiftId
    }
}

