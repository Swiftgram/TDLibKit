//
//  SendResoldGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user must be transferred using transferGift and can't be passed to the method
public struct SendResoldGift: Codable, Equatable, Hashable {

    /// Name of the upgraded gift to send
    public let giftName: String?

    /// Identifier of the user or the channel chat that will receive the gift
    public let ownerId: MessageSender?

    /// The price that the user agreed to pay for the gift
    public let price: GiftResalePrice?


    public init(
        giftName: String?,
        ownerId: MessageSender?,
        price: GiftResalePrice?
    ) {
        self.giftName = giftName
        self.ownerId = ownerId
        self.price = price
    }
}

