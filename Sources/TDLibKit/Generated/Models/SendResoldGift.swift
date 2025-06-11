//
//  SendResoldGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user must be transferred using transferGift and can't be passed to the method
public struct SendResoldGift: Codable, Equatable, Hashable {

    /// Name of the upgraded gift to send
    public let giftName: String?

    /// Identifier of the user or the channel chat that will receive the gift
    public let ownerId: MessageSender?

    /// The amount of Telegram Stars required to pay for the gift
    public let starCount: Int64?


    public init(
        giftName: String?,
        ownerId: MessageSender?,
        starCount: Int64?
    ) {
        self.giftName = giftName
        self.ownerId = ownerId
        self.starCount = starCount
    }
}

