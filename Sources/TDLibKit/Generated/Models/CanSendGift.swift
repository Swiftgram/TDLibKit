//
//  CanSendGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Checks whether a gift with next_send_date in the future can be sent already
public struct CanSendGift: Codable, Equatable, Hashable {

    /// Identifier of the gift to send
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

