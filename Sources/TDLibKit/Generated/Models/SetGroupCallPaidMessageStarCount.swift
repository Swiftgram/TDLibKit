//
//  SetGroupCallPaidMessageStarCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Changes the minimum number of Telegram Stars that must be paid by general participant for each sent message to a live story call. Requires groupCall.can_be_managed right
public struct SetGroupCallPaidMessageStarCount: Codable, Equatable, Hashable {

    /// Group call identifier; must be an identifier of a live story call
    public let groupCallId: Int?

    /// The new minimum number of Telegram Stars; 0-getOption("paid_group_call_message_star_count_max")
    public let paidMessageStarCount: Int64?


    public init(
        groupCallId: Int?,
        paidMessageStarCount: Int64?
    ) {
        self.groupCallId = groupCallId
        self.paidMessageStarCount = paidMessageStarCount
    }
}

