//
//  DeleteGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Deletes a gift without receiving Telegram Stars for it. Use receivedGift.can_be_deleted or messageGift.can_be_deleted to check whether the gift can be deleted
public struct DeleteGift: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request; for bots only
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

