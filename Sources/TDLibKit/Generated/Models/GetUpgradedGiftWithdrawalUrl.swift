//
//  GetUpgradedGiftWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Returns a URL for upgraded gift withdrawal in the TON blockchain as an NFT; requires owner privileges for gifts owned by a chat. The user must have a valid temporary password; see createTemporaryPassword
public struct GetUpgradedGiftWithdrawalUrl: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(receivedGiftId: String?) {
        self.receivedGiftId = receivedGiftId
    }
}

