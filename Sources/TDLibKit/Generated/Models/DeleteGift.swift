//
//  DeleteGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Deletes a gift without receiving Telegram Stars for it. Use receivedGift.can_be_deleted or messageGift.can_be_deleted to check whether the gift can be deleted. The gift may be deleted even if it can still be sold using sellGift
public struct DeleteGift: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(
        businessConnectionId: String?,
        receivedGiftId: String?
    ) {
        self.businessConnectionId = businessConnectionId
        self.receivedGiftId = receivedGiftId
    }
}

