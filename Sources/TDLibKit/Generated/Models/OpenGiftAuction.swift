//
//  OpenGiftAuction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Informs TDLib that a gift auction was opened by the user
public struct OpenGiftAuction: Codable, Equatable, Hashable {

    /// Identifier of the gift, which auction was opened
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

