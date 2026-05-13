//
//  CloseGiftAuction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-7a7081bf
//  https://github.com/tdlib/td/tree/7a7081bf
//

import Foundation


/// Informs TDLib that a gift auction was closed by the user
public struct CloseGiftAuction: Codable, Equatable, Hashable {

    /// Identifier of the gift, which auction was closed
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

