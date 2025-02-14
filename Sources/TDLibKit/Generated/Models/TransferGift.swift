//
//  TransferGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Sends an upgraded gift to another user or a channel chat
public struct TransferGift: Codable, Equatable, Hashable {

    /// Identifier of the user or the channel chat that will receive the gift
    public let newOwnerId: MessageSender?

    /// Identifier of the gift
    public let receivedGiftId: String?

    /// The amount of Telegram Stars required to pay for the transfer
    public let starCount: Int64?


    public init(
        newOwnerId: MessageSender?,
        receivedGiftId: String?,
        starCount: Int64?
    ) {
        self.newOwnerId = newOwnerId
        self.receivedGiftId = receivedGiftId
        self.starCount = starCount
    }
}

