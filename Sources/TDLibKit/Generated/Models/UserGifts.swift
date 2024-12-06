//
//  UserGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
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

