//
//  GetUpgradedGiftWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Returns a URL for upgraded gift withdrawal in the TON blockchain as an NFT; requires owner privileges for gifts owned by a chat
public struct GetUpgradedGiftWithdrawalUrl: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(
        password: String?,
        receivedGiftId: String?
    ) {
        self.password = password
        self.receivedGiftId = receivedGiftId
    }
}

