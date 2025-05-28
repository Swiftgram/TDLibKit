//
//  SellGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Sells a gift for Telegram Stars
public struct SellGift: Codable, Equatable, Hashable {

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

