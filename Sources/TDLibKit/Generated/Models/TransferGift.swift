//
//  TransferGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Sends an upgraded gift to another user or channel chat
public struct TransferGift: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection on behalf of which to send the request; for bots only
    public let businessConnectionId: String?

    /// Identifier of the user or the channel chat that will receive the gift
    public let newOwnerId: MessageSender?

    /// Identifier of the gift
    public let receivedGiftId: String?

    /// The Telegram Star amount that must be paid for the transfer
    public let starCount: Int64?


    public init(
        businessConnectionId: String?,
        newOwnerId: MessageSender?,
        receivedGiftId: String?,
        starCount: Int64?
    ) {
        self.businessConnectionId = businessConnectionId
        self.newOwnerId = newOwnerId
        self.receivedGiftId = receivedGiftId
        self.starCount = starCount
    }
}

