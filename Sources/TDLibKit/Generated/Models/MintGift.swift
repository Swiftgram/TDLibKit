//
//  MintGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Mints an upgraded gift as an NFT on the TON blockchain and sends the NFT directly to the TON wallet of the current user, which is created automatically if the user has no wallet yet; requires owner privileges for gifts owned by a chat. The user must have a valid temporary password; see createTemporaryPassword. Minting is irreversible. The NFT will be received by the wallet in a few seconds after the request succeeds
public struct MintGift: Codable, Equatable, Hashable {

    /// Pass true to keep the gift displayed on the user's or the chat's profile page after minting
    public let keepOnProfile: Bool?

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(
        keepOnProfile: Bool?,
        receivedGiftId: String?
    ) {
        self.keepOnProfile = keepOnProfile
        self.receivedGiftId = receivedGiftId
    }
}

