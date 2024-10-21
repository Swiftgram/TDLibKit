//
//  UserGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Represents a list of gifts received by a user
public struct UserGifts: Codable, Equatable, Hashable {

    /// The list of gifts
    public let gifts: [UserGift]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The total number of received gifts
    public let totalCount: Int


    public init(
        gifts: [UserGift],
        nextOffset: String,
        totalCount: Int
    ) {
        self.gifts = gifts
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

