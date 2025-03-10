//
//  SellGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-207f3be7
//  https://github.com/tdlib/td/tree/207f3be7
//

import Foundation


/// Sells a gift for Telegram Stars
public struct SellGift: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(receivedGiftId: String?) {
        self.receivedGiftId = receivedGiftId
    }
}

