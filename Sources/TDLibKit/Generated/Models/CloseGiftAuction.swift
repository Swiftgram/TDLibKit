//
//  CloseGiftAuction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

