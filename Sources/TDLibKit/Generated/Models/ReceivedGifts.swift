//
//  ReceivedGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Represents a list of gifts received by a user or a chat
public struct ReceivedGifts: Codable, Equatable, Hashable {

    /// True, if notifications about new gifts of the owner are enabled
    public let areNotificationsEnabled: Bool

    /// The list of gifts
    public let gifts: [ReceivedGift]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The total number of received gifts
    public let totalCount: Int


    public init(
        areNotificationsEnabled: Bool,
        gifts: [ReceivedGift],
        nextOffset: String,
        totalCount: Int
    ) {
        self.areNotificationsEnabled = areNotificationsEnabled
        self.gifts = gifts
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

